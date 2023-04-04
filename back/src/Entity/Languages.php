<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Languages.
 */
#[ORM\Table(name: 'Languages')]
#[ORM\Entity]
class Languages
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_language', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    private $idLanguage;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'label', type: 'string', length: 255, nullable: true)]
    private $label;

    public function getIdLanguage(): ?int
    {
        return $this->idLanguage;
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
}
