//
//  WalkingBear.m
//  JungleRush2
//
//  Created by NMlab Mac on 2014/5/2.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "WalkingBear.h"

@implementation WalkingBear

- (void)didLoadFromCCB
{
    // generate a random number between 0.0 and 2.0
    float delay = 0.0;
    // call method to start animation after random delay
    [self performSelector:@selector(startWalkingBear) withObject:nil afterDelay:delay];
}

- (void)startWalkingBear
{
    // the animation manager of each node is stored in the 'userObject' property
    CCBAnimationManager* animationManager = self.userObject;
    // timelines can be referenced and run by name
    [animationManager runAnimationsForSequenceNamed:@"WalkingBear"];
}

@end
