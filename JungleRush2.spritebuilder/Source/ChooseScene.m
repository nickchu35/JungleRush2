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

-(void)SelectBear {
    // loads the Bear.ccb we have set up in Spritebuilder
    CCNode* bear = [CCBReader load:@"Bear"];
    // position the bear
    bear.position = ccpAdd(_startButton.position,ccp(0,50));
    [_spriteNode addChild:bear];
    NSLog(@"selected bear");
    
    self.position = ccp(0, 0);

}

@end
