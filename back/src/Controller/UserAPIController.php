<?php

namespace App\Controller;

use App\Entity\Bibliouser;
use App\Repository\AuthorRepository;
use App\Repository\BibliouserRepository;
use App\Repository\BookRepository;
use Nelmio\ApiDocBundle\Annotation\Security;
use OpenApi\Attributes as OA;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/api')]
#[OA\Tag('Users')]
class UserAPIController extends AbstractController
{

    #[OA\Get(summary: 'The Users list')]
    #[OA\Response(
        response: 200,
        description: 'The Users list',
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/LiteUserInfo'
            )
        )
    )]
    #[Route('/users', methods: ['GET'])]
    public function index(BibliouserRepository $ur): Response
    {
        $users = $ur->findAllUsers();
        $listUsers = array();
        foreach($users as $user) {
            $infos = array(
                'id' => $user['idUser'],
                'name' => $user['name'],
            );
            array_push($listUsers, $infos);
        }

        return $this->json($listUsers);
    }

    #[OA\Get(summary: "List of the Loans of a User")]
    #[OA\Response(
        response: 200,
        description: "List of the Loans of a User",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[Security(name: 'Bearer')]
    #[IsGranted('ROLE_USER')]
    #[IsGranted('ROLE_USER')]
    #[View(serializerGroups: ['book_infos'])]
    #[Route('/users/loan', methods: ['GET'])]
    public function showUserLoan(BibliouserRepository $ur, BookRepository $br): Response
    {
        $id = $this->getUser()->getIdUser();
        $listLoan = $ur->findUserLoan($id);
        $listBooks = [];
        foreach ($listLoan as $loan) {
            array_push($listBooks, $br->findOneBySomeField($loan));
        }

        return $this->json($listBooks);
    }

    #[OA\Post(summary: 'Allows an user to connect to the application')]
    #[OA\Response(
        response: 200,
        description: 'The user is connected',
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/Login'
            )
        )
    )]
    #[OA\RequestBody(
        content: new OA\JsonContent(ref: '#/components/schemas/UserConnexion')
    )]
    #[View(serializerGroups: ['user_info'])]
    #[Route('/users/login', methods: ['POST'])]
    public function login(BibliouserRepository $ur, Request $request, ?Bibliouser $user): Response
    {
        $info = json_decode($request->getContent(), true);
        $login = $info['name'];
        $password = $info['password'];
        $user = $ur->findByInfo($login, $password);

        if (null === $user) {
            return $this->json([
                'code' => 401,
            ], Response::HTTP_UNAUTHORIZED);
        }

        $token = bin2hex(random_bytes(16));
        $user->setToken($token);
        $ur->save($user, true);

        return $this->json([
            'token' => $token,
        ]);
    }


    #[OA\Get(summary: "List of one user's friends")]
    #[OA\Response(
        response: 200,
        description: "List of the user's friends",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/UserInfos'
            )
        )
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[Route('/users/friend', methods: ['GET'])]
    #[View(serializerGroups: ['user_info'])]
    public function friends(BibliouserRepository $ur): Response
    {
        $user = $ur->findById($this->getUser()->getIdUser());

        return $this->json($user->getIdUser1());
    }


    #[OA\Post(summary: 'Add a friend')]
    #[OA\Response(
        response: 200,
        description: "The friend has been added",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/UserInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,
        description: "idUser1 is null",
    )]
    #[OA\Response(
        response: 416,
        description: "La valeur de 'idUser1' n'existe pas dans la BD",
    )]
    #[OA\Response(
        response: 409,
        description: 'idUser1 is invalid, its value does not exist',
    )]
    #[OA\RequestBody(
        content: new OA\JsonContent(ref: '#/components/schemas/AddRemoveFriend')
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[Route('/users/friend_add', methods: ['POST'])]
    #[View(serializerGroups: ['user_info'])]
    public function add_friend(BibliouserRepository $ur, Request $request): Response
    {
        $data = json_decode($request->getContent(), true);

        if ($data['idUser1'] == null) {
            return $this->json(["error" => 'idUser1 is null'], Response::HTTP_BAD_REQUEST);
        } else {
            $id = $this->getUser()->getIdUser();
            $idFriend = $data['idUser1'];
        }

        if ($ur->findById($idFriend) == null) {
            return $this->json(["error" => "idUser1 is invalid, its value does not exist"]
                , Response::HTTP_REQUESTED_RANGE_NOT_SATISFIABLE);
        } else {
            $user = $ur->findById($id);
            $friend = $ur->findById($idFriend);
        }

        if (in_array($friend, $user->getIdUser1())) {
            return $this->json(["error" => "These users are already friends"], Response::HTTP_CONFLICT);
        }

        $user->addIdUser1($friend);
        $ur->save($user, true);

        return $this->json($user->getIdUser1());
    }

    #[OA\Delete(summary: "Delete a friend from the user friend list")]
    #[OA\Response(
        response: 200,
        description: "The user's friend list",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/UserInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,
        description: "IdUser1 is not provide",
    )]
    #[OA\Response(
        response: 416,
        description: "idUser1 is not filled in",
    )]
    #[OA\Response(
        response: 409,
        description: "These users are not friends",
    )]
    #[OA\RequestBody(
        content: new OA\JsonContent(ref: '#/components/schemas/AddRemoveFriend')
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[Route('/users/friend_delete', methods: ['delete'])]
    public function delete_friend(BibliouserRepository $ur, Request $request): Response
    {
        $data = json_decode($request->getContent(), true);

        if ($data['idUser1'] == null) {
            return $this->json(["error" => "idUser1 is not filled in"], Response::HTTP_BAD_REQUEST);
        } else {
            $id = $this->getUser()->getIdUser();
            $idFriend = $data['idUser1'];
        }

        if ($ur->findById($idFriend) == null) {
            return $this->json(["error" => "idUser1 is invalid, its value does not exist"], Response::HTTP_REQUESTED_RANGE_NOT_SATISFIABLE);
        } else {
            $user = $ur->findById($id);
            $friend = $ur->findById($idFriend);
        }

        if (!in_array($friend, $user->getIdUser1())) {
            return $this->json(["error" => "These users are not friends"], Response::HTTP_CONFLICT);
        }

        $user->removeIdUser1($friend);
        $ur->save($user, true);

        return $this->json($user->getIdUser1());
    }

    #[OA\Get(summary: "List of books that the user likes")]
    #[OA\Response(
        response: 200,
        description: "List of books that the user likes",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[Route('/users/booksLike', methods: ['GET'])]
    public function books_like(BibliouserRepository $ur): Response
    {
        $id = $this->getUser()->getIdUser();
        $user = $ur->findById($id);
        $list = $user->getIdBook();

        return $this->json($list);
    }
    #[OA\Post(summary: "Add a book to the user's likes")]
    #[OA\Response(
        response: 200,
        description: "The user's like list",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,
        description: "idBook is null",
    )]
    #[OA\Response(
        response: 416,
        description: "idBook value doesn't exist",
    )]
    #[OA\Response(
        response: 409,
        description: "This book is already in the user's like list",
    )]
    #[OA\RequestBody(
        content: new OA\JsonContent(ref: '#/components/schemas/AddRemoveLike')
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[View(serializerGroups: ['user_info'])]
    #[Route('/users/book_add', methods: ['POST'])]
    public function add_book(BibliouserRepository $ur, Request $request, BookRepository $bookRepository): Response
    {
        $data = json_decode($request->getContent(), true);

        if ($data['idBook'] == null) {
            return $this->json(["error" => 'idBook are null'], Response::HTTP_BAD_REQUEST);
        } else {
            $id = $this->getUser()->getIdUser();
            $idBook = $data['idBook'];
        }

        if ($bookRepository->findOneBySomeField($idBook) == null) {
            return $this->json(["error" => "Id and/or idBook are invalides, their values don't exist"]
            , Response::HTTP_REQUESTED_RANGE_NOT_SATISFIABLE);
        } else {
            $user = $ur->findById($id);
            $book = $bookRepository->findOneBySomeField($idBook);
        }

        if (in_array($book, $user->getIdBook())) {
            return $this->json(["error" => "This book is already in the user's like list"], Response::HTTP_CONFLICT);
        }
        $user->addIdBook($book);
        $ur->save($user, true);

        return $this->json($user->getIdBook());
    }


    #[OA\Get(summary: "Allow to get for books recommandation for a user")] 
    #[OA\Response(
        response: 200,
        description: "The list of books recommandation for a user",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,
        description: "idUser is null",
    )]
    #[View(serializerGroups: ['user_info'])]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[Route('/users/book_recommandation', methods: ['GET'])]
    public function algoBook(BibliouserRepository $ur, BookRepository $br, AuthorRepository $ar): Response
    {

        $user = $this->getUser(); //user = the user

        //we're getting the books liked by the user
        $books = $user->getIdBook(); //books = the books liked by the user
        $booksAuthors = array(); //booksAuthors = the authors of the books liked by the user

        //we're filling an array with the authors
        foreach ($books as $book) {
            array_push($booksAuthors, $book->getIdAuthor());
        }

        $booksAuthor = array(); //booksAuthor = the authors of the books liked by the user classed by number of books liked
        //we're filling an other array with the authors
        foreach ($booksAuthors as $authors) {
            foreach ($authors as $author) {
                array_push($booksAuthor, $author);
            }
        }

        //we're sorting the authors by number of books liked
        $booksAuthor = array_count_values($booksAuthor);
        arsort($booksAuthor);

        $recomendedBook = array(); //recomendedBook = the books recomended
        $i = 0;
        //will stop when the array has 4 books or when there is no more authors
        while(count($recomendedBook) < 4 & $i < count($booksAuthor)){

            //we're getting the author
            $author = $ar->findByNameStart(array_keys($booksAuthor)[$i]); //author = the author
            $author = $ar->findById($author[0]['idAuthor']);

            $allBooks = $author->getAllBooks(); //allBooks = the author's books
            foreach ($allBooks as $book) {
                if (!in_array($book, $recomendedBook) && !in_array($book, $books) && count($recomendedBook) < 4) {
                    array_push($recomendedBook, $book);
                }
            }
            ++$i;
        }
        $randomBooks = $br->findAll(); //randomBooks = all the books

        //if the table does not have 4 recommended books, we add books with the same category as the user's first book
        if(count($recomendedBook) < 4){
            $i = 0;
            while (count($recomendedBook) < 4 & $i < count($randomBooks)) {
                if ($randomBooks[$i]->getIdCategory() === $books[0]->getIdCategory()) {
                    array_push($recomendedBook, $randomBooks[$i]);
                }
                ++$i;
            }
        }

        //if the table still does not have 4 recommended books, we add random books
        if(count($recomendedBook) < 4){
            $i = 0;
            while (count($recomendedBook) < 4 & $i < count($randomBooks)) {
                array_push($recomendedBook, $randomBooks[$i]);
                ++$i;
            }

        } 
        return $this->json($recomendedBook);
    }

    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[OA\Delete(summary: "Allow to remove a book from the user's like list")]
    #[OA\Response(
        response: 200,
        description: "The list of books liked by the user",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,

        description: "idBook is null",
    )]
    #[OA\Response(
        response: 416,
        description: "idBook is not valid, it's value doesn't exist",
    )]
    #[OA\Response(
        response: 409,
        description: "This book is already in the user's like list",
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[OA\RequestBody(
        content: new OA\JsonContent(ref: '#/components/schemas/AddRemoveLike')
    )]
    #[View(serializerGroups: ['user_info'])]
    #[Route('/users/book_delete', methods: ['delete'])]
    public function book_delete(BibliouserRepository $ur, Request $request, BookRepository $bookRepository): Response
    {
        $data = json_decode($request->getContent(), true);

        if ($data['idBook'] == null){
            return $this->json(["error" => 'idBook est null'], Response::HTTP_BAD_REQUEST);
        }else {
            $id = $this->getUser()->getIdUser();
            $idBook = $data['idBook'];
        }
    
        if ($bookRepository->findOneBySomeField($idBook) == null) {
            return $this->json(["error" => "idBook is invalide, this value don't exist"]
            , Response::HTTP_REQUESTED_RANGE_NOT_SATISFIABLE);
        } else {
            $user = $ur->findById($id);
            $book = $bookRepository->findOneBySomeField($idBook);
        }

        if (in_array($book, $user->getIdBook()) == false) {
            return $this->json(["error" => "This user didn't like this book"], Response::HTTP_CONFLICT);
        }

        $user->removeIdBook($book);
        $ur->save($user, true);

        return $this->json($user->getIdBook());
    }

    #[OA\Get(summary: "Returns a list of users who like books similar to the current user")]
    #[OA\Response(
        response: 200,
        description: "The generated user's list",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/UserInfos'
            )
        )
    )]
    #[OA\Response(
        response: 416,
        description: "The actual user doesn't like any book so the list can't be generated",
    )]
    #[IsGranted('ROLE_USER')]
    #[Security(name: 'Bearer')]
    #[View(serializerGroups: ['user_info'])]
    #[Route('/users/friends_recommendation', methods: ['GET'])]
    public function getRecommendedUsers(BibliouserRepository $userRepository)
    {
        $friendsNumber = 6;

        /** @var Bibliouser */
        $user = $this->getUser();

        //we're getting the user books
        $books = $user->getIdBook();
        $booksAuthors = array();
        
        //we find the authors of these books
        foreach ($books as $book) {
            $booksAuthors = array_merge($booksAuthors, $book->getIdAuthor());
        }

        if(empty($booksAuthors) ){
            return $this->json(["error" => "The actual user doesn't like any book so the list can't be generated"], Response::HTTP_REQUESTED_RANGE_NOT_SATISFIABLE);
        }

        $booksAuthors = array_count_values($booksAuthors);

        arsort($booksAuthors);

        $booksAuthors = array_slice($booksAuthors, 0, length: 5);
        /** @var array */
        $usersNotTaken = array_merge($user->getIdUser1(), [$user->getIdUser()]);
        $recommendedFriends = $userRepository->findBySameSortedAuthor($booksAuthors, $usersNotTaken, $friendsNumber);

        if (empty($recommendedFriends)) {
            $recommendedFriends = $userRepository->findRandomUsers($usersNotTaken);
        }

        return $this->json($recommendedFriends);
    }

    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[OA\Get(summary: "Returns the 3 last books liked by a user")]
    #[OA\Response(
        response: 200,
        description: "the 3 last books liked by a user",
    )]
    #[OA\Parameter(
        name: 'id',
        in: 'query',
        required: true,
        schema: new OA\Schema(type: 'integer')
    )]
    #[View(serializerGroups: ['user_info'])]
    #[Route('/users/last_like', methods: ['GET'])]
    public function threeLastLike(BibliouserRepository $ur, Request $request): Response
    {
        $id = $request->query->get('id');
        $user = $ur->findById($id);
        $books = $user->getIdBook();
        $threeLastBooks = [];

        if (count($books) < 3) {
            $count = count($books);
        } else {
            $count = 3;
        }

        for ($i = 0; $i < $count; ++$i) {
            array_push($threeLastBooks, $books[count($books) - $i - 1]);
        }

        return $this->json($threeLastBooks);
    }
}
