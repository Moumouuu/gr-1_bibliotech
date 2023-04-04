<?php

namespace App\Repository;

use App\Entity\Author;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Author>
 *
 * @method Author|null find($id, $lockMode = null, $lockVersion = null)
 * @method Author|null findOneBy(array $criteria, array $orderBy = null)
 * @method Author[]    findAll()
 * @method Author[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AuthorRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Author::class);
    }

    /**
     * @return Author[] Returns an array of 5 Author's name
     * 
     * @param string $nameStart the first letters of the author's name
     */
    public function findByNameStart(string $nameStart): array
    {
        $qb = $this->createQueryBuilder('author');
        $qb
            ->where($qb->expr()->like('author.name', '?1'))
            ->setParameter(1, $nameStart.'%')
            ->setMaxResults(5);

        return $qb->getQuery()->getArrayResult();
    }

    /**
     * @return Author[] Returns an array of Author objects
     * 
     * @param string $name the author's name
     */
    public function findByExampleField($name): array
    {
        return $this->createQueryBuilder('author')
            ->andWhere('author.name LIKE :name')
            ->setParameter('name', $name.'%')
            ->getQuery()
            ->getResult();
    }

    /**
     * @return ?Author Returns an Author objects
     * 
     * @param int $id the id of the author
     */
    public function findById(int $id): ?Author
    {
        $qb = $this->createQueryBuilder('author');
        $qb
            ->where($qb->expr()->like('author.idAuthor', '?1'))
            ->setParameter(1, $id);

        return $qb->getQuery()->getOneOrNullResult();
    }
}
