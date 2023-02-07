/*******************************************************************
** This code is part of Breakout.
**
** Breakout is free software: you can redistribute it and/or modify
** it under the terms of the CC BY 4.0 license as published by
** Creative Commons, either version 4 of the License, or (at your
** option) any later version.
******************************************************************/
#include "../include/game.h"
#include "../include/resource_manager.h"
#include "../include/sprite_renderer.h"
#include "../include/game_object.h"

#include <iostream>

// Game-related State data
SpriteRenderer  *Renderer;
GameObject      *Player;

float dotPos = 0.0f;
float accTimeUp = 0.0f;
float accTimeDown = 0.0f;
float worldDistance;


Game::Game(unsigned int width, unsigned int height)
        : State(GAME_ACTIVE), Keys(), Width(width), Height(height)
{

}

Game::~Game()
{
    delete Renderer;
    delete Player;
}


void Game::Init()
{
    // load shaders
    ResourceManager::LoadShader("../shaders/sprite.vs", "../shaders/sprite.frag", nullptr, "sprite");
    // configure shaders
    glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(this->Width),
                                      static_cast<float>(this->Height), 0.0f, -1.0f, 1.0f);
    ResourceManager::GetShader("sprite").Use().SetInteger("image", 0);
    ResourceManager::GetShader("sprite").SetMatrix4("projection", projection);
    // set render-specific controls
    Shader tempShader = ResourceManager::GetShader("sprite");
    Renderer = new SpriteRenderer(tempShader);
    // load textures
    ResourceManager::LoadTexture("../textures/background.png", false, "background");
    ResourceManager::LoadTexture("../textures/awesomeface.png", true, "face");
    ResourceManager::LoadTexture("../textures/block.png", false, "block");
    ResourceManager::LoadTexture("../textures/block_solid.png", false, "block_solid");
    ResourceManager::LoadTexture("../textures/paddle.png", true, "paddle");
    ResourceManager::LoadTexture("../textures/dots.png", true, "dots");
    ResourceManager::LoadTexture("../textures/zapper.png", true, "zapper");
    // load levels
    GameLevel one; one.Load("../levels/one.lvl", "../levels/coinsOne.lvl", this->Width, this->Height / 2);
    GameLevel two; two.Load("../levels/two.lvl", "../levels/coinsTwo.lvl", this->Width, this->Height / 2);
    GameLevel three; three.Load("../levels/three.lvl", "../levels/coinsThree.lvl", this->Width, this->Height / 2);
    this->Levels.push_back(three);
    this->Levels.push_back(two);
    this->Levels.push_back(three);
    this->Level = 0;
    // configure game objects
    glm::vec2 playerPos = glm::vec2(this->Width / 10.0f - PLAYER_SIZE.x / 2.0f, this->Height - PLAYER_SIZE.y);
    Player = new GameObject(playerPos, PLAYER_SIZE, ResourceManager::GetTexture("paddle"));
}

void Game::Update(float dt)
{

    worldDistance += 0.1;
    dotPos -= 4;
    if(dotPos < -20) dotPos = -1;

}

void Game::ProcessInput(float dt)
{
    if (this->State == GAME_ACTIVE)
    {
        float velocity = PLAYER_VELOCITY * dt;
        float velocityDown = PLAYER_VELOCITY_DOWN * dt;
        if(Player->Position.y > this->Height - Player->Size.y){
            Player->Position.y = this->Height - Player->Size.y;
            return;
        }
        // move playerboard
        if (this->Keys[GLFW_KEY_SPACE])
        {
            accTimeUp += 0.5;
            accTimeDown = 0.0f;
            if (Player->Position.y >= 0.0f)
                Player->Position.y -= (velocity + accTimeUp);
        }
        else {
            accTimeUp = 0.0f;
            accTimeDown += 0.8f;
            if(Player->Position.y < this->Height - Player->Size.y){
                Player->Position.y += (velocityDown + accTimeDown);
            }
        }
    }
}

void Game::Render()
{
    if(this->State == GAME_ACTIVE)
    {
        // draw background
        Texture2D tempTexture =  ResourceManager::GetTexture("background");
        Renderer->DrawSprite(tempTexture, glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);

//        Texture2D tempTextureDots =  ResourceManager::GetTexture("dots");
//        Renderer->DrawSprite(tempTextureDots, glm::vec2(dotPos, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);

        // draw level
        this->Levels[this->Level].Draw(*Renderer, worldDistance);
        Player->Draw(*Renderer);
    }
}



