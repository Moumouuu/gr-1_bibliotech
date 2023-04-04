<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class AuthorTest extends WebTestCase
{
    public function testAllAuthors(): void
    {
        $client = static::createClient();
        $client->request('GET', '/api/authors');
        $authors = json_decode($client->getResponse()->getContent(), true);
        $this->assertResponseIsSuccessful("L'appel à l'API fonctionne");
        foreach($authors as $author){
            $this->assertArrayHasKey('name', $author, "Un utilisateur a un nom");
        }
    }
}
