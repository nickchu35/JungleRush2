//
//  NewGamePlayIce.m
//  JungleRush2
//
//  Created by NMlab Mac on 2014/4/26.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "NewGamePlayIce.h"

@implementation NewGamePlayIce

- (void)test {
    CCScene *mainScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:mainScene];
}

@end
