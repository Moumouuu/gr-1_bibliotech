<?php

namespace App\Entity;

use App\Repository\BibliouserRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use OpenApi\Attributes as OA;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * Bibliouser.
 */
#[ORM\Table(name: 'BiblioUser')]
#[ORM\Entity(repositoryClass: BibliouserRepository::class)]
class Bibliouser implements UserInterface, PasswordAuthenticatedUserInterface
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_user', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]

    #[Groups(['user_info', 'lite_user_info'])]
    #[OA\Property(example: "15")]
    private $idUser;

    /**
     * @var string|null
     */ 
    #[ORM\Column(name: 'surname', type: 'string', length: 255, nullable: true)]
    #[Groups(['user_info', 'lite_user_info'])]
    #[OA\Property(example: "Tara")]
    private $surname;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'name', type: 'string', length: 255, nullable: true)]
    #[Groups(['user_info', 'user_connexion'])]
    #[OA\Property(example: 'Johnston')]
    private $name;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'password', type: 'string', length: 255, nullable: true)]
    #[Groups(['user_info', 'user_connexion'])]
    #[OA\Property(example: 'q0-4591090E')]
    private $password;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'p_picture', type: 'string', length: 255, nullable: true)]
    #[OA\Property(example: "La photo de profil de l'utilisateur")]
    #[Groups(['user_info'])]
    private $pPicture;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    #[ORM\JoinTable(name: 'isFriend')]
    #[ORM\JoinColumn(name: 'id_user', referencedColumnName: 'id_user')]
    #[ORM\InverseJoinColumn(name: 'id_user_1', referencedColumnName: 'id_user')]
    #[ORM\ManyToMany(targetEntity: 'Bibliouser', inversedBy: 'idUser')]
    #[Groups(['user_info', 'add_delete_friend'])]
    #[OA\Property(example: '15')]
    private $idUser1 = [];

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    #[ORM\JoinTable(name: 'BooksLike')]
    #[ORM\JoinColumn(name: 'id_user', referencedColumnName: 'id_user')]
    #[ORM\InverseJoinColumn(name: 'id_book', referencedColumnName: 'id_book')]
    #[ORM\ManyToMany(targetEntity: 'Book', inversedBy: 'idBibliouser')]
    #[Groups(['user_info', 'add_remove_like'])]
    #[OA\Property(example: '1')]
    private $idBook = [];

    #[ORM\Column(length: 255, nullable: true)]
    #[Groups(['login'])]
    #[OA\Property(example: '8a4dfd24741097b63f9e5dc22b05628f')]
    private ?string $token = null;

    #[ORM\Column]
    private array $roles = [];

    /**
     * Constructor.
     */
    public function __construct()
    {
        $this->idBook = new ArrayCollection();
        $this->idUser1 = new ArrayCollection();
    }

    public function getIdUser(): ?int
    {
        return $this->idUser;
    }

    public function getSurname(): ?string
    {
        return $this->surname;
    }

    public function setSurname(?string $surname): self
    {
        $this->surname = $surname;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(?string $password): self
    {
        $this->password = $password;

        return $this;
    }

    public function getPPicture(): ?string
    {
        return $this->pPicture;
    }

    public function setPPicture(?string $pPicture): self
    {
        $this->pPicture = $pPicture;

        return $this;
    }

    /**
     * @return Collection<int, Bibliouser>
     */
    public function getIdUser1(): array
    {
        $allFriends = $this->idUser1->getValues();
        foreach ($allFriends as $friend) {
            $friend->{'idUser1'} = new ArrayCollection();
        }

        return $allFriends;
    }

    public function addIdUser1(Bibliouser $idUser1): self
    {
        if (!$this->idUser1->contains($idUser1)) {
            $this->idUser1->add($idUser1);
        }

        return $this;
    }

    public function removeIdUser1(Bibliouser $idUser1): self
    {
        $this->idUser1->removeElement($idUser1);

        return $this;
    }

    public function getToken(): ?string
    {
        return $this->token;
    }

    public function setToken(?string $token): self
    {
        $this->token = $token;

        return $this;
    }

    public function getRoles(): array
    {
        return ['ROLE_USER'];
    }

    public function setRoles(?array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

    /**
     * @return Collection<int, Book>
     */
    public function getIdBook(): array
    {
        return $this->idBook->getValues();
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

    public function __toString(): string
    {
        return $this->getName();
    }

    public function getUserIdentifier(): string
    {
        return $this->getName();
    }

    public function eraseCredentials()
    {
    }

    public function findXBook(int $numberOfBooks, int $offset = 0, bool $reversed = false)
    {
        /** @var array */
        $books = $this->getIdBook();
        if ($reversed) {
            rsort($books);
        }

        return array_slice($books, $offset, $numberOfBooks);
    }
}
