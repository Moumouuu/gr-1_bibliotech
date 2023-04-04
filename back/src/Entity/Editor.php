<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Editor.
 */
#[ORM\Table(name: 'Editor')]
#[ORM\Entity]
class Editor
{
    /**
     * @var int
     */
    #[ORM\Column(name: 'id_editor', type: 'integer', nullable: false)]
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: 'IDENTITY')]
    private $idEditor;

    /**
     * @var string|null
     */
    #[ORM\Column(name: 'label', type: 'string', length: 255, nullable: true)]
    private $label;

    public function getIdEditor(): ?int
    {
        return $this->idEditor;
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
