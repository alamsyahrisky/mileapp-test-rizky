<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class AuthenticationTest extends TestCase
{
    use WithFaker;

    public function testRequiredFieldsForRegistration()
    {
        $this->json('POST', 'api/register', ['Accept' => 'application/json'])
            ->assertStatus(400)
            ->assertJson([
                "status" => "error",
                "message" => [
                    "name" => ["The name field is required."],
                    "email" => ["The email field is required."],
                    "password" => ["The password field is required."],
                ]
            ]);
    }

    public function testRequiredFieldsForLogin()
    {
        $this->json('POST', 'api/login', ['Accept' => 'application/json'])
            ->assertStatus(400)
            ->assertJson([
                "status" => "error",
                "message" => [
                    "email" => ["The email field is required."],
                    "password" => ["The password field is required."],
                ]
            ]);
    }

    public function testFailedLogin()
    {
        $userData = [
            "email" => $this->faker->email,
            "password" => "demo12345",
        ];

        $this->json('POST', 'api/login', $userData ,['Accept' => 'application/json'])
            ->assertStatus(500)
            ->assertJson([
                "status" => "error",
                "message" => "Unauthorized"
            ]);
    }

    public function testSuccessLogin()
    {
        $userData = [
            "email" => 'admin@admin.com',
            "password" => "@admin12345",
        ];

        $this->json('POST', 'api/login', $userData ,['Accept' => 'application/json'])
            ->assertStatus(200)
            ->assertJsonStructure([
                "status",
                "data" => [
                    "access_token",
                    "token_type",
                    "user" => [
                        "id",
                        "name",
                        "email",
                        "email_verified_at",
                        "created_at",
                        "updated_at",
                    ],
                ]
            ]);
    }

    public function testSuccessfulRegistration()
    {
        $userData = [
            "name" => "John Doe",
            "email" => $this->faker->email,
            "password" => "demo12345",
        ];

        $this->json('POST', 'api/register', $userData, ['Accept' => 'application/json'])
            ->assertStatus(200)
            ->assertJsonStructure([
                "status",
                "data" => [
                    "access_token",
                    "token_type",
                    "user" => [
                        "id",
                        "name",
                        "email",
                        "email_verified_at",
                        "created_at",
                        "updated_at",
                    ],
                ]
            ]);
    }
}
