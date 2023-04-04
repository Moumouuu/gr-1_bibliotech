<?php

namespace App\Controller;

use App\Repository\AuthorRepository;
use FOS\RestBundle\Controller\Annotations\View;
use OpenApi\Attributes as OA;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/api')]
#[OA\Tag('author')]
class AuthorAPIController extends AbstractController
{
    #[OA\Get(
        summary: "The Author's list"
    )]
    #[OA\Response(
        response: 200,
        description: "The Author's list",
        content: new OA\JsonContent(
            type: 'array',
            items: new OA\Items(
                ref: '#/components/schemas/AuthorInfos'
            )
        )
    )]
    #[View(serializerGroups: ['author_infos'])]
    #[Route('/authors', methods: ['GET'])]
    public function index(AuthorRepository $ar, Request $request)
    {
        $authors = null;
        $startWith = $request->get('start', null);

        if (null != $startWith) {
            $authors = $ar->findByNameStart($startWith);
        } else {
            $authors = $ar->findAll();
        }

        return $authors;
    }
}
