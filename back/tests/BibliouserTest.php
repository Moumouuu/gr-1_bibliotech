<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

use function PHPUnit\Framework\assertEquals;
use function PHPUnit\Framework\assertFalse;
use function PHPUnit\Framework\assertTrue;

class BibliouserTest extends WebTestCase
{
    public function testfindBook(): void
    {
        $client = static::createClient();
        $client->request('GET', '/api/users');
        $users = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        foreach($users as $user){
            $this->assertArrayHasKey('id', $user, "Un utilisateur a un nom");
            $this->assertArrayHasKey('name', $user, "Un utilisateur a un nom");
        }
    }

    public function testLogin(): void
    {
        $data = array(
                        'name' => "Terry",
                        'password' => "z9-773732K"
        );
        $client = static::createClient();
        $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
        $response = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        $this->assertArrayHasKey('token', $response, "Un utilisateur a un nom");


    }

    public function testUserLoan(): void
    {
        // Connexion à un utilisateur
        $data = array(
            'name' => "Wright",
            'password' => "B5-3607311R"
            );
            $client = static::createClient();
            $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
            $login = json_decode($client->getResponse()->getContent(), true);
        // Début des tests    
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer {$login["token"]}"
        );
        $client->request('GET', '/api/users/loan', [], [], $headers);
        $loans = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        foreach($loans as $loan){
            $this->assertArrayHasKey('idBook', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('title', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('cover', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('description', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('numberOfPages', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idYear', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idEditor', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idLanguage', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idCategory', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idAuthor', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('acquiringDate', $loan, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idBibliousers', $loan, "Un utilisateur a un nom");
        }
    }

    public function testUserFriendAdd(): void
    {
        // Connexion à un utilisateur
        $data = array(
            'name' => "Wright",
            'password' => "B5-3607311R"
        );
        $client = static::createClient();
        $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
        $login = json_decode($client->getResponse()->getContent(), true);
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer {$login["token"]}"
        ); 
        // L'id de l'utilisateur que l'on souhaite ajouter
        $idFriend = 84;
        // On ajoute l'utilisateur d'id 84 dans la liste d'amis
        $client->request('POST', '/api/users/friend_add', [], [], $headers, '{"idUser1":' . $idFriend . '}');
        $friends = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        // Récupération de l'utlisateur ajouté dans la liste d'ami
        $friendAdded = $friends[sizeof($friends) -1];
        // On vérifie que l'utilisateur a bien été ajouté 
        assertEquals($friendAdded["idUser"], $idFriend);
        // Test du code de retour lorsque on est déjà ami avec l'utilisateur que l'on souhaite ajouté
        $client->request('POST', '/api/users/friend_add', [], [], $headers, '{"idUser1":' . $idFriend . '}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(409, $errorCode);
        // Test du code de retour lorsque la valeur de idUser1 n'est pas renseigné
        $client->request('POST', '/api/users/friend_add', [], [], $headers, '{"idUser1":""}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(400, $errorCode);
        // Test du code de retour lorsque la valeur de idUser1 n'existe pas dans la BD
        $client->request('POST', '/api/users/friend_add', [], [], $headers, '{"idUser1":"400"}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(416, $errorCode);      
    }

    public function testUserFriendDelete(): void
    {
        // Connexion à un utilisateur
        $data = array(
            'name' => "Wright",
            'password' => "B5-3607311R"
        );
        $client = static::createClient();
        $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
        $login = json_decode($client->getResponse()->getContent(), true);
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer {$login["token"]}"
        ); 
        // L'id de l'utilisateur que l'on souhaite supprimer
        $idFriend = 84;
        // On ajoute l'utilisateur d'id 84 dans la liste d'amis
        $client->request('POST', '/api/users/friend_add', [], [], $headers, '{"idUser1":' . $idFriend . '}');
        // On supprime l'utilisateur d'id 84 dans la liste d'amis
        $client->request('DELETE', '/api/users/friend_delete', [], [], $headers, '{"idUser1":' . $idFriend . '}');
        $friends = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        // On vérifie que l'utilisateur a bien été supprimé de la liste d'amis
        $friendRemove = $friends[sizeof($friends) -1];
        assertFalse($friendRemove["idUser"] == $idFriend);
        // Test du code de retour lorsque on souhaite supprimer de notre liste un utilisateur qui n'est pas notre ami
        $client->request('DELETE', '/api/users/friend_delete', [], [], $headers, '{"idUser1":' . $idFriend . '}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(409, $errorCode);
        // Test du code de retour lorsque la valeur de idUser1 n'est pas renseigné
        $client->request('DELETE', '/api/users/friend_delete', [], [], $headers, '{"idUser1":""}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(400, $errorCode);
        // Test du code de retour lorsque la valeur de idUser1 n'existe pas dans la BD
        $client->request('DELETE', '/api/users/friend_delete', [], [], $headers, '{"idUser1":"400"}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(416, $errorCode);
    }

    public function testUserLikeList(): void
    {
        // Connexion à un utilisateur
        $data = array(
            'name' => "Jenkins",
            'password' => "g9-0692978G"
        );
        $client = static::createClient();
        $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
        $login = json_decode($client->getResponse()->getContent(), true);
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer {$login["token"]}"
        ); 
        $client->request('GET', '/api/users/booksLike', [], [], $headers);
        $booksLike = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        foreach($booksLike as $book){
            $this->assertArrayHasKey('idBook', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('title', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('cover', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('description', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('numberOfPages', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idYear', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idEditor', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idLanguage', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idCategory', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idAuthor', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('acquiringDate', $book, "Un utilisateur a un nom");
            $this->assertArrayHasKey('idBibliousers', $book, "Un utilisateur a un nom");

        }    
    }

    public function testUserAddLike(): void
    {
        // Connexion à un utilisateur
        $data = array(
            'name' => "Jenkins",
            'password' => "g9-0692978G"
        );
        $client = static::createClient();
        $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
        $login = json_decode($client->getResponse()->getContent(), true);
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer {$login["token"]}"
        );
        // L'id du livre auquel on souhaite ajouter un like 
        $idBook = 10;
        // On ajoute le livre d'id 10 dans la liste des livres likés de l'utilisateur
        $client->request('POST', '/api/users/book_add', [], [], $headers, '{"idBook":' . $idBook . '}');
        $booksLike = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        // Récupération du livre ajouté dans la liste des livres likés de l'utilisateur
        $bookAdded = $booksLike[sizeof($booksLike) -1];
        assertEquals($bookAdded["idBook"], $idBook);
        // Test du code de retour lorsque l'utilisateur aime déjà ce livre
        $client->request('POST', '/api/users/book_add', [], [], $headers, '{"idBook":' . $idBook . '}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(409, $errorCode);
        // Test du code de retour lorsque la valeur de idBook n'est pas renseigné
        $client->request('POST', '/api/users/book_add', [], [], $headers, '{"idBook":""}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(400, $errorCode);
        // Test du code de retour lorsque la valeur de idBook n'existe pas dans la BD
        $client->request('POST', '/api/users/book_add', [], [], $headers, '{"idBook":"3456"}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(416, $errorCode);
    }

    public function testUserDeleteLike(): void
    {
        // Connexion à un utilisateur
        $data = array(
            'name' => "Jenkins",
            'password' => "g9-0692978G"
        );
        $client = static::createClient();
        $client->request('POST', '/api/users/login', [], [], ['CONTENT_TYPE' => 'application/json'], json_encode($data));
        $login = json_decode($client->getResponse()->getContent(), true);
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer {$login["token"]}"
        );
        // L'id du livre auquel on souhaite ajouter un like 
        $idBook = 10;
        // On ajoute le livre d'id 10 dans la liste des livres likés de l'utilisateur
        $client->request('POST', '/api/users/book_add', [], [], $headers, '{"idBook":' . $idBook . '}');
        // On supprime le livre d'id 10 dans la liste des livres likés de l'utilisateur
        $client->request('DELETE', '/api/users/book_delete', [], [], $headers, '{"idBook":' . $idBook . '}');
        $booksLike = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        // On vérifie que le livre a bien été supprimé de la liste des livres likés de l'utilisateur
        $bookRemove = $booksLike[sizeof($booksLike) -1];
        assertFalse($bookRemove["idBook"] == $idBook);
        // Test du code de retour lorsque l'utilisateur n'a pas aimé ce livre
        $client->request('DELETE', '/api/users/book_delete', [], [], $headers, '{"idBook":' . $idBook . '}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(409, $errorCode);
        // Test du code de retour lorsque idBook n'est pas renseigné
        $client->request('DELETE', '/api/users/book_delete', [], [], $headers, '{"idBook":""}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(400, $errorCode);
        // Test du code de retour lorsque la valeur de idBook n'existe pas dans la BD
        $client->request('DELETE', '/api/users/book_delete', [], [], $headers, '{"idBook":"1079"}');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(416, $errorCode);

    }

    public function testAlgoBookRecommendation(): void
    {
        $client = static::createClient();
        $headers = array(
            'CONTENT_TYPE' => 'application/json',
            'HTTP_Authorization' => "Bearer like_token"
        );
        $client->request('GET', '/api/users/book_recommandation', [], [], $headers);
        $recommendedBooks = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        assertEquals(4, count($recommendedBooks));
    }


}
