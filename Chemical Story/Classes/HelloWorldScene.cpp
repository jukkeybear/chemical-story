#include "HelloWorldScene.h"
#include "ui/CocosGUI.h"
using namespace cocos2d;
using namespace ui;

Scene* HelloWorld::createScene()
{
    return HelloWorld::create();
}

static void problemLoading(const char* filename)
{
    printf("Error while loading: %s\n", filename);
    printf("Depending on how you compiled you might have to add 'Resources/' in front of filenames in HelloWorldScene.cpp\n");
}

bool HelloWorld::init()
{
    if ( !Scene::init() ){  return false;  }

    // important properties
    auto visibleSize = Director::getInstance()->getVisibleSize();

    // create button to move next scene
    Button* button = Button::create();
    button->setTouchEnabled(true);
    button->setTitleText("Click here to start");
    button->setAnchorPoint(Vec2(0.5, -0.5));
    button->setPosition(Vec2(visibleSize.width/2, visibleSize.height/2));
    button->setTitleFontSize(18);

    // add child nodes
    addChild(button);
    return true;
}

