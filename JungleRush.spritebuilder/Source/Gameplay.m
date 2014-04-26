//
//  Gameplay.m
//  JungleRush
//
//  Created by NMlab Mac on 2014/4/24.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Gameplay.h"

@implementation Gameplay

// is called when CCB file has completed loading
- (void)didLoadFromCCB {
    // tell this scene to accept touches!!!!
    self.userInteractionEnabled = TRUE;
    
    CCScene *level = [CCBReader loadAsScene:@"Levels/IceLevel"];
    [_levelNode addChild:level];
}

@end
