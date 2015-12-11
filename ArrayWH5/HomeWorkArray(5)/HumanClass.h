//
//  HumanClass.h
//  HomeWorkArray(5)
//
//  Created by Николай Стома on 19.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>


@interface HumanClass : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (strong, nonatomic) NSString* gender;

- (void) makeMovement;

@end
