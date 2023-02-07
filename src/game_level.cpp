/*******************************************************************
** This code is part of Breakout.
**
** Breakout is free software: you can redistribute it and/or modify
** it under the terms of the CC BY 4.0 license as published by
** Creative Commons, either version 4 of the License, or (at your
** option) any later version.
******************************************************************/
#include "../include/game_level.h"

#include <fstream>
#include <sstream>
#include <iostream>
#include <cstdlib>

#include <ctime>
#include <cmath>

unsigned int Height, Width;

void GameLevel::Load(const char *file, const char *coinFile, unsigned int levelWidth, unsigned int levelHeight) {
    // clear old data
    Height = levelHeight;
    Width = levelWidth;
    this->Zappers.clear();
    // load from file
    float zapperCode;
    float coinCode;

    GameLevel level;

    std::string line;
    std::ifstream fstream(file);
    std::vector <std::vector<float>> zapperData;
    if (fstream) {
        while (std::getline(fstream, line)) // read each line from level file
        {
            std::istringstream sstream(line);
            std::vector<float> row;
            while (sstream >> zapperCode) // read each word separated by spaces
                row.push_back(zapperCode);
            zapperData.push_back(row);
        }
    }


    std::ifstream fstream_2(coinFile);
    std::vector <std::vector<float>> coinData;
    if (fstream_2) {
        while (std::getline(fstream_2, line)) // read each line from level file
        {
            std::istringstream sstream(line);
            std::vector<float> row;
            while (sstream >> coinCode) // read each word separated by spaces
                row.push_back(coinCode);
            coinData.push_back(row);
        }
        if (zapperData.size() > 0)
            this->init(zapperData, coinData, levelWidth, levelHeight);
    }

}

void GameLevel::Draw(SpriteRenderer &renderer) {
    for (GameObject &zapper: this->Zappers) {

        if (zapper.DoRotate) {
            zapper.Rotation += 0.5f;
        }
        zapper.Draw(renderer);
        zapper.Position.x -= 5;
    }
    for (GameObject &coin: this->Coins) {
        coin.Position.x -= 5;
        if(!coin.Destroyed) {
            coin.Draw(renderer);
        }
    }
}

bool GameLevel::IsCompleted() {
    for(GameObject &zapper : this->Zappers){
        if(zapper.Position.x > 0){
            return false;
        }
    }
    return true;
}

void GameLevel::init(std::vector <std::vector<float>> zapperData, std::vector <std::vector<float>> coinData,
                     unsigned int levelWidth, unsigned int levelHeight) {

    for (int i = 1; i < zapperData.size(); i++) {

        float xPos = zapperData[i][0];
        float yPos = zapperData[i][1];
        float oscillate_bool = zapperData[i][2];
        float rotate_bool = zapperData[i][3];
        float y_size = zapperData[i][4];

        this->Zappers.push_back(
                GameObject(glm::vec2(xPos, (levelHeight * yPos - y_size)), glm::vec2(20, y_size),
                           ResourceManager::GetTexture("zapper"), glm::vec3(1.0f, 1.0f, 1.0f), 0, rotate_bool,
                           oscillate_bool, 0.0f));
    }

    for (int i = 0; i < coinData.size(); i++) {

        float xPos = coinData[i][0];
        float yPos = coinData[i][1];


        this->Coins.push_back(
                GameObject(glm::vec2(xPos, (levelHeight * yPos - 20)), glm::vec2(20, 20),
                           ResourceManager::GetTexture("coin"), glm::vec3(0.0f, 0.0f, 0.0f), 0, true,
                           false, 0.0f));
    }

}

