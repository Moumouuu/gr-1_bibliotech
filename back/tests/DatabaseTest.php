<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;
use App\Entity\Book;
use App\Entity\Author;
use App\Entity\Bibliouser;

use function PHPUnit\Framework\assertEquals;
use function PHPUnit\Framework\assertTrue;

class DatabaseTest extends KernelTestCase
{
    /**
     * @var \Doctrine\ORM\EntityManager
     */
    private $entityManager;

    public function testBooks(): void
    {
        $kernel = self::bootKernel();
        
        
        $this->assertSame('test', $kernel->getEnvironment());
        $this->entityManager = $kernel->getContainer()
            ->get('doctrine')
            ->getManager();
        $books = $this->entityManager->getRepository(Book::class)->findAll();
        $BookLoanZero = false;
        $BookLoanOne = false;
        $i = 0;
        while($i < count($books) or (!$BookLoanZero and !$BookLoanOne)){
            if(count($books[$i]->getIdBibliousers()) == 0){
                $BookLoanZero = true;
            }else if(count($books[$i]->getIdBibliousers()) >= 1){
                $BookLoanOne = true;
            }
            if($books[$i]->getIdBook() == 5){
                //dd($books[$i]->getIdBibliousers());
            }
            $i ++;
        }
        //Un livre est écrit par un ou plusieurs auteurs
        assertTrue(count($books) >= 200);
        assertTrue($BookLoanZero);
        assertTrue($BookLoanOne);
    }

    public function testAuthors(): void
    {
        $kernel = self::bootKernel();
        $this->assertSame('test', $kernel->getEnvironment());
        $this->entityManager = $kernel->getContainer()
            ->get('doctrine')
            ->getManager();
        $authors = $this->entityManager->getRepository(Author::class)->findAll();
        $authorZeroBook = false;
        $authorOneBook = false;
        $i = 0;
        while($i < count($authors) or (!$authorZeroBook and !$authorOneBook)){
            if(count($authors[$i]->getAllBooks()) == 0){
                $authorZeroBook = true;
            }else if(count($authors[$i]->getAllBooks()) >= 1){
                $authorOneBook = true;
            }
            $i ++;
        }
        assertTrue(count($authors) >= 50);
    }

    public function testUsers(): void
    {
        $kernel = self::bootKernel();
        $this->assertSame('test', $kernel->getEnvironment());
        $this->entityManager = $kernel->getContainer()
            ->get('doctrine')
            ->getManager();
        $users = $this->entityManager->getRepository(Bibliouser::class)->findAll();

        assertTrue(count($users) >= 100);
    }
}
