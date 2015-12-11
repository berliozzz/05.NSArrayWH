//
//  HumanClass.m
//  HomeWorkArray(5)
//
//  Created by Николай Стома on 19.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "HumanClass.h"

@implementation HumanClass

- (instancetype)init   // inicialization properties
{
    self = [super init];
    if (self) {
        self.name = @"default";
        self.height = 0.1f;
        self.weight = 0.5f;
        self.gender = @"male";
    }
    return self;
}

- (void) makeMovement
{
    NSLog(@"Launch method - makeMovement!(HUMAN)");
}

@end
