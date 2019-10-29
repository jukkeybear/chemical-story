#include "SelectScene.hpp"

Scene* SelectScene::createScene(){
    return SelectScene::create();
}

bool SelectScene::init(){
    return true;
}
