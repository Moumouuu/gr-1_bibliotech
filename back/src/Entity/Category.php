<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Category.
 */
#[ORM\Table(name: 'Category')]
#[ORM\Entity]
class Category
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_category', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    private $idCategory;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'label', type: 'string', length: 255, nullable: true)]
    private $label;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    #[ORM\ManyToMany(targetEntity: Book::class, mappedBy: 'idCategory')]
    private $idBook = [];

    /**
     * Constructor.
     */
    public function __construct()
    {
        $this->idBook = new ArrayCollection();
    }

    public function getIdCategory(): ?int
    {
        return $this->idCategory;
    }

    public function getLabel(): ?string
    {
        return $this->label;
    }

    public function setLabel(?string $label): self
    {
        $this->label = $label;

        return $this;
    }

    /**
     * @return Collection<int, Book>
     */
    public function getIdBook(): Collection
    {
        return $this->idBook;
    }

    public function addIdBook(Book $idBook): self
    {
        if (!$this->idBook->contains($idBook)) {
            $this->idBook->add($idBook);
            $idBook->addIdCategory($this);
        }

        return $this;
    }

    public function removeIdBook(Book $idBook): self
    {
        if ($this->idBook->removeElement($idBook)) {
            $idBook->removeIdCategory($this);
        }

        return $this;
    }
}
