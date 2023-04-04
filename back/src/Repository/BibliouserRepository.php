<?php

namespace App\Repository;

use App\Entity\Bibliouser;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Bibliouser>
 *
 * @method Bibliouser|null find($id, $lockMode = null, $lockVersion = null)
 * @method Bibliouser|null findOneBy(array $criteria, array $orderBy = null)
 * @method Bibliouser[]    findAll()
 * @method Bibliouser[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BibliouserRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Bibliouser::class);
    }

    /**
     * @return Bibliouser return a user by his id or null if not found
     * 
     * @param int $id the id of the user
     */
    public function findById(int $id): ?Bibliouser
    {
        $qb = $this->createQueryBuilder('Bibliouser');
        $qb
        ->where($qb->expr()->like('Bibliouser.idUser', '?1'))
        ->setParameter(1, $id);

        return $qb->getQuery()->getOneOrNullResult();
    }

    /**
     * @return Bibliouser return a user by his login and password or null if not found
     * 
     * @param string $login the user's login
     * @param string $password the user's password
     */
    public function findByInfo($login, $password): ?Bibliouser
    {
        $qb = $this->createQueryBuilder('Bibliouser');
        $qb
        ->where($qb->expr()->like('Bibliouser.name', '?1'))
        ->andWhere($qb->expr()->like('Bibliouser.password', '?2'))
        ->setParameter(1, $login)
        ->setParameter(2, $password);

        return $qb->getQuery()->getOneOrNullResult();
    }

    /**
     * @return Bibliouser[] return an array of all users
     */
    public function findAllUsers(): array
    {
        $qb = $this->createQueryBuilder('Biobliouser');

        return $qb->getQuery()->getArrayResult();
    }

    /**
     * @return Bibliouser[] return an array of with the loans of an user
     * 
     * @param int $id the id of the user
     */
    public function findUserLoan(int $id): array
    {
        $qb = $this->createQueryBuilder('Bibliouser');
        $qb
        ->select('Book.idBook')
        ->join(
            'App\Entity\Loan',
            'Loan',
            'WITH',
            'Bibliouser.idUser = Loan.idUser'
        )
        ->join(
            'App\Entity\Book',
            'Book',
            'WITH',
            'Loan.idBook = Book.idBook'
        )
        ->where($qb->expr()->like('Bibliouser.idUser', '?1'))
        ->setMaxResults(4)
        ->orderBy('Loan.loanDate', 'DESC')
        ->setParameter(1, $id);

        $books = $qb->getQuery()->getArrayResult();

        return $books;
    }

    /**
     *  allow to save a user's infos in the database
     * 
     * @param Bibliouser $user the user to save
     * @param bool $flush if true, the database will be updated
     */
    public function save(Bibliouser $user, bool $flush = false): void
    {
        $this->getEntityManager()->persist($user);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }


    /**
     * Select a number of users that will be selected as recommended friends depending on the authors read by the user.
     *
     * @param array $authors       an array of [ $author => $numberOfOccurrences], representing the authors that the user likes
     * @param array $usersNotTaken array of users that will be ignored by the algorithm
     * @param int   $numberOfUsers the number of users to generate
     *
     * @return array the recommended users
     */
    public function findBySameSortedAuthor(array $authors, array $usersNotTaken, int $numberOfUsers): array
    {
        $qb = $this->createQueryBuilder('users');

        return $qb
        ->leftjoin('users.idBook', 'book')
        ->leftJoin('book.idAuthor', 'author')
        ->select('users as user, count(author.name) as nbSimilarAuthor')
        ->where($qb->expr()->in('author.name    ', '?0'))
        ->andWhere($qb->expr()->notIn('users.idUser', '?1'))
        ->setParameters([array_keys($authors), $usersNotTaken])
        ->setMaxResults($numberOfUsers)
        ->orderBy('nbSimilarAuthor', 'DESC')
        ->groupBy('users')
        ->getQuery()->getArrayResult();
    }

    /**
     * Select a number of users that will be selected as recommended friends depending on the authors read by the user.
     *
     * @param array $usersNotTaken an array of users that won't be inside the , representing the authors that the user likes
     *
     * @return array random Users
     */
    public function findRandomUsers(array $usersNotTaken = null): array
    {
        $qb = $this->createQueryBuilder('users');
        $users = $qb
        ->andWhere($qb->expr()->notIn('users.idUser', '?1'))
        ->setParameter(1, $usersNotTaken)
        ->getQuery()->getArrayResult();

        shuffle($users);

        return array_slice($users, 0, 6);
    }
}
