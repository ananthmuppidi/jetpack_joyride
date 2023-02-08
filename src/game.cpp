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
#include "../include/text_renderer.h"

#include <iostream>
#include <sstream>
#include <iomanip>

float progress = 0;

// Game-related State data
SpriteRenderer *Renderer;
GameObject *Player;
SpriteRenderer *GlowRenderer;

float accTimeUp = 0.0f;
float accTimeDown = 0.0f;

unsigned int coinCollected = 0;


Game::Game(unsigned int width, unsigned int height)
        : State(GAME_MENU), Keys(), Width(width), Height(height) {

}

Game::~Game() {
    delete Renderer;
    delete Player;
}

TextRenderer  *Text;
void Game::Init() {
    Text = new TextRenderer(this->Width, this->Height);
    Text->Load("../fonts/OCRAEXT.TTF", 24);
    // load shaders
    ResourceManager::LoadShader("../shaders/sprite.vs", "../shaders/sprite.frag", nullptr, "sprite");
    ResourceManager::LoadShader("../shaders/glow.vs", "../shaders/glow.frag", nullptr, "glow");
    // configure shaders
    glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(this->Width),
                                      static_cast<float>(this->Height), 0.0f, -1.0f, 1.0f);
    ResourceManager::GetShader("sprite").Use().SetInteger("image", 0);
    ResourceManager::GetShader("sprite").SetMatrix4("projection", projection);

    ResourceManager::GetShader("glow").Use().SetInteger("image", 0);
    ResourceManager::GetShader("glow").SetMatrix4("projection", projection);
    // set render-specific controls
    Shader tempShader = ResourceManager::GetShader("sprite");
    Renderer = new SpriteRenderer(tempShader);

    tempShader = ResourceManager::GetShader("glow");
    GlowRenderer = new SpriteRenderer(tempShader);
    // load textures
    ResourceManager::LoadTexture("../textures/background.png", false, "background");
    ResourceManager::LoadTexture("../textures/paddle.png", true, "paddle");
    ResourceManager::LoadTexture("../textures/zapper.png", true, "zapper");
    ResourceManager::LoadTexture("../textures/coin.png", true, "coin");
    // load levels
    GameLevel one;
    one.Load("../levels/one.lvl", "../levels/coinsOne.lvl", this->Width, this->Height / 2);
    GameLevel two;
    two.Load("../levels/two.lvl", "../levels/coinsTwo.lvl", this->Width, this->Height / 2);
    GameLevel three;
    three.Load("../levels/three.lvl", "../levels/coinsThree.lvl", this->Width, this->Height / 2);
    this->Levels.push_back(one);
    this->Levels.push_back(two);
    this->Levels.push_back(three);
    this->Level = 0;
    // configure game objects
    glm::vec2 playerPos = glm::vec2(this->Width / 10.0f - PLAYER_SIZE.x / 2.0f, this->Height - PLAYER_SIZE.y);
    Player = new GameObject(playerPos, PLAYER_SIZE, ResourceManager::GetTexture("paddle"));
}

void Game::Update(float dt) {
    progress += 5;
    this->CollectCoins();
    if(this->Zap()){
        this->State = GAME_LOSE;
    }
    if(this->Levels[Level].IsCompleted()){
        this->Level += 1;
        progress = 0.0f;
        if(this->Level > 2){
            --this->Level;
            this->State = GAME_WIN;
        }
    }

}

void Game::ProcessInput(float dt) {
    if(this->State == GAME_MENU){
        if (this->Keys[GLFW_KEY_ENTER])
        this->State = GAME_INTRO;
    }
    if(this->State == GAME_INTRO){
        if (this->Keys[GLFW_KEY_SPACE]) {
            progress = 0.0f;
            this->State = GAME_ACTIVE;
        }
    }

    if (this->State == GAME_ACTIVE) {
        float velocity = PLAYER_VELOCITY * dt;
        float velocityDown = PLAYER_VELOCITY_DOWN * dt;
        if (Player->Position.y > this->Height - Player->Size.y) {
            Player->Position.y = this->Height - Player->Size.y;
            return;
        }
        // move playerboard
        if (this->Keys[GLFW_KEY_SPACE]) {
            ResourceManager::GetShader("glow").Use().SetInteger("jet", 1);
            accTimeUp += 0.5;
            accTimeDown = 0.0f;
            if (Player->Position.y >= 0.0f)
                Player->Position.y -= (velocity + accTimeUp);
        } else {
            ResourceManager::GetShader("glow").Use().SetInteger("jet", 0);
            accTimeUp = 0.0f;
            accTimeDown += 0.8f;
            if (Player->Position.y < this->Height - Player->Size.y) {
                Player->Position.y += (velocityDown + accTimeDown);
            }
        }
    }
}

void Game::Render() {

    if(this->State == GAME_MENU) {
        Texture2D tempTexture = ResourceManager::GetTexture("background");
        Renderer->DrawSprite(tempTexture, glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);
        Text->RenderText("jetpack_joyride: Press Enter!", 170.0f, 300.0f, 1.0f);
    }

    if(this->State == GAME_INTRO){
        Texture2D tempTexture = ResourceManager::GetTexture("background");
        Renderer->DrawSprite(tempTexture, glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);
        Player->Draw(*GlowRenderer);
        Text->RenderText("press space to jump!", 250.0f, 300.0f, 1.0f);
    }

    if (this->State == GAME_ACTIVE){
        // draw background
        Texture2D tempTexture = ResourceManager::GetTexture("background");
        Renderer->DrawSprite(tempTexture, glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);

        // draw level
        this->Levels[this->Level].Draw(*Renderer);
        Player->Draw(*GlowRenderer);

        std::stringstream ss; ss << coinCollected;
        std::stringstream ss2; ss2 << this->Level + 1;
        std::stringstream ss3; ss3 << std::setprecision(4) <<  progress * 100 / 5600.0f;
        Text->RenderText("Coins:" + ss.str() + " | Level: " + ss2.str() + " | Progress: " + ss3.str() , 420.0f, 580.0f, 0.65f);
    }

    if(this->State == GAME_LOSE) {
        Texture2D tempTexture = ResourceManager::GetTexture("background");
        Renderer->DrawSprite(tempTexture, glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);
        std::stringstream ss; ss << coinCollected;
        Text->RenderText("You Lost! Coin(s): " +  ss.str() + " (press esc)", 100.0f, 250.0f, 1.3f);
    }

    if(this->State == GAME_WIN) {
        Texture2D tempTexture = ResourceManager::GetTexture("background");
        Renderer->DrawSprite(tempTexture, glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f);
        std::stringstream ss; ss << coinCollected;
        Text->RenderText("You Won! Coins: " +  ss.str() + " (press esc)", 100.0f, 250.0f, 1.3f);
    }
}

bool Game::CheckCollision(GameObject &one, GameObject &two) // AABB - AABB collision
{
    // collision x-axis?
    bool collisionX = one.Position.x + one.Size.x >= two.Position.x &&
                      two.Position.x + two.Size.x >= one.Position.x;
    // collision y-axis?
    bool collisionY = one.Position.y + one.Size.y >= two.Position.y &&
                      two.Position.y + two.Size.y >= one.Position.y;
    // collision only if on both axes
    return collisionX && collisionY;
}


void Game::CollectCoins() {

    for (GameObject &coin: this->Levels[this->Level].Coins) {
        if (!coin.Destroyed) {
            if (CheckCollision(*Player, coin)) {
                coinCollected++;
                coin.Destroyed = true;
            }
        }
    }
}

bool Game::Zap() {
    for (GameObject &zapper: this->Levels[this->Level].Zappers) {
        if (!zapper.Destroyed) {
            if (CheckCollision(*Player, zapper)) {
                return true;
            }
        }
    }
    return false;
}


