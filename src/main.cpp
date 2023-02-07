/*******************************************************************
** This code is part of Breakout.
**
** Breakout is free software: you can redistribute it and/or modify
** it under the terms of the CC BY 4.0 license as published by
** Creative Commons, either version 4 of the License, or (at your
** option) any later version.
******************************************************************/

#define STB_IMAGE_IMPLEMENTATION

#include <stb_image.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "../include/game.h"
#include "../include/resource_manager.h"

#include <iostream>
#include <fstream>

// GLFW function declarations
void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode);

// The Width of the screen
const unsigned int SCREEN_WIDTH = 800;
// The height of the screen
const unsigned int SCREEN_HEIGHT = 600;

Game Breakout(SCREEN_WIDTH, SCREEN_HEIGHT);

void makeLevels(){
    std::fstream lvl_one, lvl_two, lvl_three, coinsOne, coinsTwo, coinsThree;

    lvl_one.open("../levels/one.lvl", std::ios::out);
    lvl_two.open("../levels/two.lvl", std::ios::out);
    lvl_three.open("../levels/three.lvl", std::ios::out);

    coinsOne.open("../levels/coinsOne.lvl", std::ios::out);
    coinsTwo.open("../levels/coinsTwo.lvl", std::ios::out);
    coinsThree.open("../levels/coinsThree.lvl", std::ios::out);


    if(!lvl_one) {
        std::cerr << "err: level_2_file" << std::endl;
        exit(1);
    }

    for(int iter1 = 400; iter1 <= 5600; iter1 += 400){

        lvl_one << iter1;
        lvl_one << " ";

        float rand_y_pos = ((float)std::rand() * 2 / RAND_MAX);
        lvl_one << rand_y_pos;
        lvl_one << " ";
        float rand_rotation = ((float)std::rand() * 1 / RAND_MAX);

        lvl_one << "0";
        lvl_one << " ";


        if(rand_rotation < 0.25f){
            lvl_one << "1";
        } else {
            lvl_one << "0";
        }
        lvl_one << " ";

        float rand_size = ((float)std::rand() * 150 / RAND_MAX);
        rand_size += 100;

        lvl_one << rand_size;
        lvl_one << "\n";

    }

    if(!lvl_two){
        std::cerr << "err: level_2_file" << std::endl;
        exit(1);
    }

    for(int iter1 = 400; iter1 <= 5600; iter1 += 400){

        lvl_two << iter1;
        lvl_two << " ";

        float rand_y_pos = ((float)std::rand() * 2 / RAND_MAX);
        lvl_two << rand_y_pos;
        lvl_two << " ";
        float rand_rotation = ((float)std::rand() * 1 / RAND_MAX);

        lvl_two << "0";
        lvl_two << " ";


        if(rand_rotation < 0.25f){
            lvl_two << "1";
        } else {
            lvl_two << "0";
        }
        lvl_two << " ";

        float rand_size = ((float)std::rand() * 150 / RAND_MAX);
        rand_size += 100;

        lvl_two << rand_size;
        lvl_two << "\n";
    }

    for(int iter1 = 600; iter1 <= 5600; iter1 += 800){

        lvl_two << iter1;
        lvl_two << " ";

        float rand_y_pos = ((float)std::rand()  / 2 * RAND_MAX) + 1.5;
        lvl_two << rand_y_pos;
        lvl_two << " ";
        float rand_rotation = ((float)std::rand() * 1 / RAND_MAX);

        lvl_two << "0";
        lvl_two << " ";


        if(rand_rotation < 0.25f){
            lvl_two << "1";
        } else {
            lvl_two << "0";
        }
        lvl_two << " ";

        float rand_size = ((float)std::rand() * 150 / RAND_MAX);
        rand_size += 20;

        lvl_two << rand_size;
        lvl_two << "\n";
    }



    if(!lvl_three) {
        std::cerr << "err: level_3_file" << std::endl;
        exit(1);
    }

    for(int iter1 = 400; iter1 <= 5600; iter1 += 400){

        lvl_three << iter1;
        lvl_three << " ";

        float rand_y_pos = ((float)std::rand() * 2 / RAND_MAX);
        lvl_three << rand_y_pos;
        lvl_three << " ";
        float rand_rotation = ((float)std::rand() * 1 / RAND_MAX);

        lvl_three << "0";
        lvl_three << " ";


        if(rand_rotation < 0.35f){
            lvl_three << "1";
        } else {
            lvl_three << "0";
        }
        lvl_three << " ";

        float rand_size = ((float)std::rand() * 150 / RAND_MAX);
        rand_size += 100;

        lvl_three << rand_size;
        lvl_three << "\n";

    }

    for(int iter2 = 600; iter2 <= 5600; iter2 += 400){

        lvl_three << iter2;
        lvl_three << " ";

        float rand_y_pos = 1.8;
        lvl_three << rand_y_pos;
        lvl_three << " ";
        float rand_rotation = ((float)std::rand() * 1 / RAND_MAX);

        lvl_three << "0";
        lvl_three << " ";


        if(rand_rotation < 0.25f){
            lvl_three << "1";
        } else {
            lvl_three << "0";
        }
        lvl_three << " ";

        float rand_size = ((float)std::rand() * 150 / RAND_MAX);
        rand_size += 20;

        lvl_three << rand_size;
        lvl_three << "\n";


    }

    for(int i = 400; i < 5600; i+= 100){
        lvl_three << i;
        lvl_three << " ";

        float rand_y_pos = 0.1;
        lvl_three << rand_y_pos;
        lvl_three << " ";

        lvl_three << "0";
        lvl_three << " ";

        lvl_three << "0";
        lvl_three << " ";

        float rand_size = 40;
        rand_size += 20;

        lvl_three << rand_size;
        lvl_three << "\n";
    }
    if(!coinsOne) {
        std::cerr << "err: coins_1_file" << std::endl;
        exit(1);
    }

    if(!coinsTwo) {
        std::cerr << "err: coins_2_file" << std::endl;
        exit(1);
    }

    if(!coinsThree) {
        std::cerr << "err: coins_3_file" << std::endl;
        exit(1);
    }

    for(int iter_coin_1 = 600; iter_coin_1 <= 5600; iter_coin_1 += 400){

        coinsOne << iter_coin_1;
        coinsOne << " ";

        float rand_y_pos = ((float)std::rand() * 2 / RAND_MAX);
        coinsOne << rand_y_pos;

        coinsOne << "\n";

    }

    for(int iter_coin_2 = 650; iter_coin_2 <= 5600; iter_coin_2 += 200){

        coinsTwo << iter_coin_2;
        coinsTwo << " ";

        float rand_y_pos = ((float)std::rand() * 2 / RAND_MAX);
        coinsTwo<< rand_y_pos;

        coinsTwo << "\n";
    }

    for(int iter_coin_3 = 650; iter_coin_3 <= 5600; iter_coin_3 += 200){

        coinsThree << iter_coin_3;
        coinsThree << " ";

        float rand_y_pos = ((float)std::rand() * 2 / RAND_MAX);
        coinsThree << rand_y_pos;

        coinsThree << "\n";
    }



}


int main(int argc, char *argv[])
{
    makeLevels();
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif
    glfwWindowHint(GLFW_RESIZABLE, false);

    GLFWwindow* window = glfwCreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "JetPack Joyride", nullptr, nullptr);
    glfwMakeContextCurrent(window);

    // glad: load all OpenGL function pointers
    // ---------------------------------------
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    glfwSetKeyCallback(window, key_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // OpenGL configuration
    // --------------------
    glViewport(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    // initialize game
    // ---------------
    Breakout.Init();

    // deltaTime variables
    // -------------------
    float deltaTime = 0.0f;
    float lastFrame = 0.0f;

    makeLevels();

    while (!glfwWindowShouldClose(window))
    {
        // calculate delta time
        // --------------------
        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;
        glfwPollEvents();

        // manage user input
        // -----------------
        Breakout.ProcessInput(deltaTime);

        // update game state
        // -----------------
        Breakout.Update(deltaTime);

        // render
        // ------
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        Breakout.Render();

        glfwSwapBuffers(window);

    }

    while (!glfwWindowShouldClose(window))
    {
        // calculate delta time
        // --------------------
        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;
        glfwPollEvents();

        // manage user input
        // -----------------
        Breakout.ProcessInput(deltaTime);

        // update game state
        // -----------------
        Breakout.Update(deltaTime);

        // render
        // ------
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        Breakout.Render();

        glfwSwapBuffers(window);
    }
    while (!glfwWindowShouldClose(window))
    {
        // calculate delta time
        // --------------------
        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;
        glfwPollEvents();

        // manage user input
        // -----------------
        Breakout.ProcessInput(deltaTime);

        // update game state
        // -----------------
        Breakout.Update(deltaTime);

        // render
        // ------
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        Breakout.Render();

        glfwSwapBuffers(window);
    }


    // delete all resources as loaded using the resource manager
    // ---------------------------------------------------------
    ResourceManager::Clear();

    glfwTerminate();
    return 0;
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode)
{
    // when a user presses the escape key, we set the WindowShouldClose property to true, closing the application
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
    if (key >= 0 && key < 1024)
    {
        if (action == GLFW_PRESS)
            Breakout.Keys[key] = true;
        else if (action == GLFW_RELEASE)
            Breakout.Keys[key] = false;
    }
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

