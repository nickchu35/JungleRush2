//
//  ChooseScene.m
//  JungleRush2
//
//  Created by NMlab Mac on 2014/4/25.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "ChooseScene.h"

@implementation ChooseScene

// is called when CCB file has completed loading
- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)start {
    CCScene *gameplayScene = [CCBReader loadAsScene:@"NewGamePlayIce"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}

- (void)backToMenu {
    CCScene *mainScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:mainScene];
}

@end
