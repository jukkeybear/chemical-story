//
//  SelectScene.hpp
//  Chemical Story
//
//  Created by Tomoya Bansho on 2018/04/29.
//

#ifndef SelectScene_hpp
#define SelectScene_hpp

#include "cocos2d.h"
using namespace cocos2d;

class SelectScene : public Scene
{
public:
    static Scene* createScene();
    virtual bool init();

    CREATE_FUNC(SelectScene);
};

#endif /* SelectScene_hpp */
