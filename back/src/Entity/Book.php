<?php

namespace App\Entity;

use App\Repository\BookRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use OpenApi\Attributes as OA;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * Book.
 */
#[ORM\Table(name: 'Book')]
#[ORM\Index(name: 'id_year', columns: ['id_year'])]
#[ORM\Index(name: 'id_language', columns: ['id_language'])]
#[ORM\Index(name: 'id_editor', columns: ['id_editor'])]
#[ORM\Entity(repositoryClass: BookRepository::class)]
class Book
{
    #[ORM\Column(name: 'id_book', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    #[OA\Property(example: '15')]
    #[Groups(['book_infos'])]
    private $idBook;

    #[ORM\Column(name: 'title', type: 'string', length: 255, nullable: true)]
    #[Groups(['book_infos'])]
    #[OA\Property(example: 'Le titre du livre')]
    private $title;

    #[ORM\Column(name: 'cover', type: 'string', length: 255, nullable: true)]
    #[Groups(['book_infos'])]
    #[OA\Property(example: 'Le lien de la couverture du livre')]
    private $cover;

    #[ORM\Column(name: 'description', type: 'string', length: 1000, nullable: true)]
    #[Groups(['book_infos'])]
    #[OA\Property(example: 'La description du livre')]
    private $description;

    #[ORM\Column(name: 'number_of_pages', type: 'integer', nullable: true)]
    #[Groups(['book_infos'])]
    #[OA\Property(example: '345')]
    private $numberOfPages;

    #[ORM\Column(name: 'acquiring_date', type: 'date', nullable: false)]
    private $acquiringDate;

    #[ORM\JoinColumn(name: 'id_year', referencedColumnName: 'id_year')]
    #[ORM\ManyToOne(targetEntity: 'Publishedyear')]
    #[Groups(['book_infos'])]
    #[OA\Property(example: '1987')]
    private $idYear;

    #[ORM\JoinColumn(name: 'id_editor', referencedColumnName: 'id_editor')]
    #[ORM\ManyToOne(targetEntity: 'Editor')]
    #[Groups(['book_infos'])]
    #[OA\Property(example: "Le nom de l'éditeur du livre")]
    private $idEditor;

    #[ORM\JoinColumn(name: 'id_language', referencedColumnName: 'id_language')]
    #[ORM\ManyToOne(targetEntity: 'Languages')]
    #[Groups(['book_infos'])]
    #[OA\Property(example: "La langue d'origine de la publication du livre")]
    private $idLanguage;

    #[ORM\JoinTable(name: 'belongs')]
    #[ORM\JoinColumn(name: 'id_book', referencedColumnName: 'id_book')]
    #[ORM\InverseJoinColumn(name: 'id_category', referencedColumnName: 'id_category')]
    #[ORM\ManyToMany(targetEntity: Category::class, inversedBy: 'idBook')]
    #[Groups(['book_infos'])]
    #[OA\Property(example: 'Fiction')]
    private $idCategory = [];

    #[ORM\JoinTable(name: 'isWritten')]
    #[ORM\ManyToMany(targetEntity: Author::class, mappedBy: 'idBook')]
    #[Groups(['book_infos'])]
    #[OA\Property(example: 'Victor Hugo')]
    private $idAuthor = [];

    #[ORM\JoinTable(name: 'BooksLike')]
    #[ORM\ManyToMany(targetEntity: Bibliouser::class, mappedBy: 'idBook')]
    #[Groups(['book_infos'])]
    #[OA\Property(example: 'Henry Decoup')]
    private $idBibliousers = [];

    /**
     * Constructor.
     */
    public function __construct()
    {
        $this->idCategory = new ArrayCollection();
        $this->idAuthor = new ArrayCollection();
        $this->idBibliousers = new ArrayCollection();
    }

    public function getIdBook(): ?int
    {
        return $this->idBook;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(?string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getCover(): ?string
    {
        return $this->cover;
    }

    public function setCover(?string $cover): self
    {
        $this->cover = $cover;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getNumberOfPages(): ?int
    {
        return $this->numberOfPages;
    }

    public function setNumberOfPages(?int $numberOfPages): self
    {
        $this->numberOfPages = $numberOfPages;

        return $this;
    }

    public function getIdYear(): ?string
    {
        if (null === $this->idYear) {
            return "L'année de publication de ce livre n'est pas connue";
        } else {
            return $this->idYear->getPublishedYear();
        }
    }

    public function setIdYear(?Publishedyear $idYear): self
    {
        $this->idYear = $idYear;

        return $this;
    }

    public function getIdEditor(): ?string
    {
        if (null != $this->idEditor) {
            return $this->idEditor->getLabel();
        } else {
            return "L'éditeur de ce livre n'est pas connu";
        }
    }

    public function setIdEditor(?Editor $idEditor): self
    {
        $this->idEditor = $idEditor;

        return $this;
    }

    public function getIdLanguage(): ?string
    {
        return $this->idLanguage->getLabel();
    }

    public function setIdLanguage(?Languages $idLanguage): self
    {
        $this->idLanguage = $idLanguage;

        return $this;
    }

    public function getIdCategory(): array
    {
        $allCategories = $this->idCategory->getValues();
        $i = 0;
        foreach ($allCategories as $category) {
            $allCategories[$i] = $category->getLabel();
            ++$i;
        }

        return $allCategories;
    }

    public function getIdAuthor(): array
    {
        $allAuthors = $this->idAuthor->getValues();
        $i = 0;
        foreach ($allAuthors as $author) {
            $allAuthors[$i] = $author->getName();
            ++$i;
        }

        return $allAuthors;
    }

    public function addIdCategory(Category $idCategory): self
    {
        if (!$this->idCategory->contains($idCategory)) {
            $this->idCategory->add($idCategory);
        }

        return $this;
    }

    public function removeIdCategory(Category $idCategory): self
    {
        $this->idCategory->removeElement($idCategory);

        return $this;
    }

    public function getAcquiringDate(): ?string
    {
        return $this->acquiringDate->format('d-m-Y');
    }

    public function setAcquiringDate(\DateTimeInterface $acquiringDate): self
    {
        $this->acquiringDate = $acquiringDate;

        return $this;
    }

    public function addIdAuthor(Author $idAuthor): self
    {
        if (!$this->idAuthor->contains($idAuthor)) {
            $this->idAuthor->add($idAuthor);
            $idAuthor->addIdBook($this);
        }

        return $this;
    }

    public function removeIdAuthor(Author $idAuthor): self
    {
        if ($this->idAuthor->removeElement($idAuthor)) {
            $idAuthor->removeIdBook($this);
        }

        return $this;
    }

    /**
     * @return Collection<int, Bibliouser>
     */
    public function getIdBibliousers(): array
    {
        $allBibliousers = $this->idBibliousers->getValues();
        $i = 0;
        foreach ($allBibliousers as $bibliouser) {
            $allBibliousers[$i] = $bibliouser->getIdUser();
            ++$i;
        }

        return $allBibliousers;
    }

    public function addIdBibliouser(Bibliouser $idBibliouser): self
    {
        if (!$this->idBibliousers->contains($idBibliouser)) {
            $this->idBibliousers->add($idBibliouser);
            $idBibliouser->addIdBook($this);
        }

        return $this;
    }

    public function removeIdBibliouser(Bibliouser $idBibliouser): self
    {
        if ($this->idBibliousers->removeElement($idBibliouser)) {
            $idBibliouser->removeIdBook($this);
        }

        return $this;
    }
}
