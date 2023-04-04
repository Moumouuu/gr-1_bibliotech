<?php

namespace App\Entity;

use App\Repository\AuthorRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use OpenApi\Attributes as OA;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * Author.
 */
#[ORM\Table(name: 'Author')]
#[ORM\Entity(repositoryClass: AuthorRepository::class)]
class Author
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_author', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    private $idAuthor;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'name', type: 'string', length: 255, nullable: true)]
    #[OA\Property(example: 'Victor Hugo')]
    #[Groups('author_infos')]
    private $name;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    #[ORM\JoinTable(name: 'isWritten')]
    #[ORM\JoinColumn(name: 'id_author', referencedColumnName: 'id_author')]
    #[ORM\InverseJoinColumn(name: 'id_book', referencedColumnName: 'id_book')]
    #[ORM\ManyToMany(targetEntity: 'Book', inversedBy: 'idAuthor')]
    private $idBook = [];

    /**
     * Constructor.
     */
    public function __construct()
    {
        $this->idBook = new ArrayCollection();
    }

    public function getIdAuthor(): ?int
    {
        return $this->idAuthor;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(?string $name): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection<int, Book>
     */
    public function getId(): int
    {
        return $this->idAuthor;
    }

    public function getAllBooks(): array
    {
        $allBooks = $this->idBook->getValues();

        return $allBooks;
    }

    public function addIdBook(Book $idBook): self
    {
        if (!$this->idBook->contains($idBook)) {
            $this->idBook->add($idBook);
        }

        return $this;
    }

    public function removeIdBook(Book $idBook): self
    {
        $this->idBook->removeElement($idBook);

        return $this;
    }
}
