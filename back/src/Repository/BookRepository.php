<?php

namespace App\Repository;

use App\Entity\Book;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Book>
 *
 * @method Book|null find($id, $lockMode = null, $lockVersion = null)
 * @method Book|null findOneBy(array $criteria, array $orderBy = null)
 * @method Book[]    findAll()
 * @method Book[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BookRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Book::class);
    }

    /**
     * @return Book return a book
     * 
     * @param int $idBook the id of the book
     */
    public function findOneBySomeField($idBook): ?Book
    {
        return $this->createQueryBuilder('book')
            ->andWhere('book.idBook = :idBook')
            ->setParameter('idBook', $idBook)
            ->getQuery()
            ->getOneOrNullResult();
    }

    /**
     * @return Book[] return the four last acquisitions of the library
     */
    public function findLibraryBooks(): array
    {
        return $this->createQueryBuilder('book')
            ->orderBy('book.acquiringDate', 'DESC')
            ->setMaxResults(4)
            ->getQuery()
            ->getResult();
    }
}
