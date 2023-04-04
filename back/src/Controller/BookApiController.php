<?php

namespace App\Controller;

use App\Repository\AuthorRepository;
use App\Repository\BookRepository;
use FOS\RestBundle\Controller\Annotations\View;
use Nelmio\ApiDocBundle\Annotation\Security;
use OpenApi\Attributes as OA;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\BadRequestHttpException;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/api')]
#[OA\Tag('books')]
class BookApiController extends AbstractController
{
    #[OA\Get(
        summary: 'The Book infos'
    )]
    #[OA\Response(
        response: 200,
        description: 'The Book infos',
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,
        description: "You forgot to indicate the book's id",
    )]
    #[OA\Parameter(
        name: 'id',
        in: 'query',
        required: true,
        schema: new OA\Schema(type: 'integer')
    )]
    #[View(serializerGroups: ['book_infos'])]
    #[Route('/book', methods: ['GET'])]
    public function findBook(BookRepository $bookRepository, Request $request)
    {
        if (null == $request->query->get('id')) {
            throw new BadRequestHttpException("You forgot to indicate the book's id");
        }

        return $bookRepository->findOneBySomeField($request->query->get('id'));
    }

    #[OA\Get(
        summary: "List of the library's books by author's name" 
    )]
    #[OA\Response(
        response: 200,
        description: "List of the library's books by author's name",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[OA\Response(
        response: 400,
        description: "You forgot to indicate the author's name",
    )]
    #[OA\Parameter(
        name: 'name',
        in: 'query',
        required: true,
        schema: new OA\Schema(type: 'string')
    )]
    #[OA\Parameter(
        name: 'nbPage',
        in: 'query',
        required: false,
        schema: new OA\Schema(type: 'string')
    )]
    #[Route('/books/find', methods: ['GET'])]
    #[View(serializerGroups: ['book_infos'])]
    public function findBooks(AuthorRepository $authorRepository, Request $request)
    {
        $currentPage = $request->query->get('p');
        $nbBooksToShow = 10;
        if (null == $request->query->get('name')) {
            throw new BadRequestHttpException("You forgot to indicate the author's name");
        }

        $authors = $authorRepository->findByExampleField($request->query->get('name'));
        $books = [];
        foreach ($authors as $author) {
            array_push($books, $author->getAllBooks());
        }
        $result = [];
        foreach ($books as $book) {
            $result = array_merge($result, $book);
        }
        $nbItems = sizeof($result);
        if (null == $currentPage) {
            $result = array_slice($result, 0, $nbBooksToShow);
        } else {
            $currentPage = $currentPage. 0;
            $result = array_slice($result, $currentPage, $nbBooksToShow);
        }
        array_push($result, $nbItems);

        return $result;
    }

    #[OA\Get(
        summary: 'List of the last four acquisitions of the library'
    )]
    #[OA\Response(
        response: 200,
        description: 'List of the last four acquisitions of the library',
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/BookInfos'
            )
        )
    )]
    #[Security(name: 'Bearer')]
    #[IsGranted('ROLE_USER')]
    #[Route('/books/library', methods: ['GET'])]
    #[View(serializerGroups: ['book_infos'])]
    public function lastLibraryAcquisition(BookRepository $bookRepository)
    {
        return $bookRepository->findLibraryBooks();
    }
}
