<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Loan.
 */
#[ORM\Table(name: 'Loan')]
#[ORM\Index(name: 'id_user', columns: ['id_user'])]
#[ORM\Index(name: 'id_book', columns: ['id_book'])]
#[ORM\Entity]
class Loan
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_loan', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    private $idLoan;

    /**
     * @var \DateTime|null
     */
    #[ORM\Column(name: 'loan_date', type: 'date', nullable: true)]
    private $loanDate;

    /**
     * @var \DateTime|null
     */
    #[ORM\Column(name: 'return_date', type: 'date', nullable: true)]
    private $returnDate;

    /**
     * @var \Bibliouser
     */
    #[ORM\JoinColumn(name: 'id_user', referencedColumnName: 'id_user')]
    #[ORM\ManyToOne(targetEntity: 'Bibliouser')]
    private $idUser;

    /**
     * @var \Book
     */
    #[ORM\JoinColumn(name: 'id_book', referencedColumnName: 'id_book')]
    #[ORM\ManyToOne(targetEntity: 'Book')]
    private $idBook;

    public function getIdLoan(): ?int
    {
        return $this->idLoan;
    }

    public function getLoanDate(): ?\DateTimeInterface
    {
        return $this->loanDate;
    }

    public function setLoanDate(?\DateTimeInterface $loanDate): self
    {
        $this->loanDate = $loanDate;

        return $this;
    }

    public function getReturnDate(): ?\DateTimeInterface
    {
        return $this->returnDate;
    }

    public function setReturnDate(?\DateTimeInterface $returnDate): self
    {
        $this->returnDate = $returnDate;

        return $this;
    }

    public function getIdUser(): ?Bibliouser
    {
        return $this->idUser;
    }

    public function setIdUser(?Bibliouser $idUser): self
    {
        $this->idUser = $idUser;

        return $this;
    }

    public function getIdBook(): ?Book
    {
        return $this->idBook;
    }

    public function setIdBook(?Book $idBook): self
    {
        $this->idBook = $idBook;

        return $this;
    }
}
