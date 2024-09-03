<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class ApiController extends AbstractController
{

    #[Route('/api/resource/', name: "api_resource", methods: ['GET', 'HEAD'])]
    public function getResource(): JsonResponse
    {
        // Example data to return as JSON
        $data = [
            'id' => 1,
            'name' => 'Sample Resource2',
            'description' => 'This is an example of a RESTful API response in Symfony 7.1.',
        ];

        // Return the data as a JSON response
        return $this->json($data);
    }
}
