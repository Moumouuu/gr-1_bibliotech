<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

use function PHPUnit\Framework\assertEquals;

class BookTest extends WebTestCase
{
    public function testfindBook(): void
    {
        $client = static::createClient();
        $client->request('GET', '/api/book?id=5');
        $book = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        $this->assertArrayHasKey('title', $book, "Un livre à un titre");
        $this->assertArrayHasKey('cover', $book, "Un livre à une page de couverture");
        $this->assertArrayHasKey('description', $book, "Un livre à une description");
        $this->assertArrayHasKey('numberOfPages', $book, "Un livre à un nombre de pages");
        $this->assertArrayHasKey('idYear', $book, "Un livre à une année de publication");
        $this->assertArrayHasKey('idEditor', $book, "Un livre à un éditeur");
        $this->assertArrayHasKey('idLanguage', $book, "Un livre à une langue de publication");
        $this->assertArrayHasKey('idCategory', $book, "Un livre à une/des catégories");
        $this->assertArrayHasKey('idAuthor', $book, "Un livre à un/des auteurs");
        // Test du code te retour lorsque aucun paramètre id n'est fourni
        $client->request('GET', '/api/book');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(400, $errorCode);
    }

    public function testFindBooks(): void
    {
        $client = static::createClient();
        $client->request('GET', '/api/books/find?name=Victor Hugo');
        $books = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        $this->assertEquals(6, count($books));
        // On regarde si tous les livres ont bien été écrit par Victor Hugo
        $this->assertEquals("Victor Hugo", $books[0]['idAuthor'][0]);
        $this->assertEquals("Victor Hugo", $books[1]['idAuthor'][0]);
        $this->assertEquals("Victor Hugo", $books[2]['idAuthor'][0]);
        $this->assertEquals("Victor Hugo", $books[3]['idAuthor'][0]);
        $this->assertEquals("Victor Hugo", $books[4]['idAuthor'][0]);
        // Test du code te retour lorsque aucun paramètre name n'est fourni
        $client->request('GET', '/api/books/find?name');
        $errorCode = json_decode($client->getResponse()->getStatusCode(), true);
        assertEquals(400, $errorCode);
    }

    public function testFindLibraryBooks(): void
    {
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
        $client->request('GET', '/api/books/library', [], [], $headers);
        $books = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        $this->assertEquals(4, count($books));
        // On regarde que la requête renvoie bien les mêmes livres sur un deuxième appel
        $testBooks = json_decode($client->getResponse()->getContent(), true);
        $i = 0;
        foreach($books as $book){
            $this->assertEquals($book, $testBooks[$i]);
            $i ++;
        }
        $this->assertEquals($books[0], $testBooks[0]);
        $this->assertEquals($books[1], $testBooks[1]);
        $this->assertEquals($books[2], $testBooks[2]);
        $this->assertEquals($books[3], $testBooks[3]);
    }
}
