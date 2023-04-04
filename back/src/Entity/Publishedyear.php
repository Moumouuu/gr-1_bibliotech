<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Publishedyear.
 */
#[ORM\Table(name: 'PublishedYear')]
#[ORM\Entity]
class Publishedyear
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_year', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    private $idYear;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'published_year', type: 'string', length: 50, nullable: true)]
    private $publishedYear;

    public function getIdYear(): ?int
    {
        return $this->idYear;
    }

    public function getPublishedYear(): ?string
    {
        return $this->publishedYear;
    }

    public function setPublishedYear(?string $publishedYear): self
    {
        $this->publishedYear = $publishedYear;

        return $this;
    }
}
