//
//  AppDelegate.m
//  HomeWorkArray(5)
//
//  Created by Николай Стома on 19.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "HumanClass.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Undertaker.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    
    
    HumanClass* humanClassObject = [[HumanClass alloc] init];  //create object humanClassObject
    humanClassObject.name = @"Homo sapiens";                   // add properties humanClassObject
    humanClassObject.height = 1.99f;
    humanClassObject.weight = 83.;
    humanClassObject.gender = @"male";
    
    
    Cyclist* cyclistClassObject = [[Cyclist alloc] init];       //create object humanClassObject
    cyclistClassObject.name = @"Johnny";                        // add properties humanClassObject
    cyclistClassObject.height = 1.8f;
    cyclistClassObject.weight = 71.f;
    cyclistClassObject.gender = @"male";
    
    Runner* runnerClassObject = [[Runner alloc] init];          //create object humanClassObject
    runnerClassObject.name = @"Marta";                          // add properties humanClassObject
    runnerClassObject.height = 1.56f;
    runnerClassObject.weight = 45.f;
    runnerClassObject.gender = @"female";
    
    Swimmer* swimmerClassObject = [[Swimmer alloc] init];       //create object humanClassObject
    swimmerClassObject.name = @"Gretta";                        // add properties humanClassObject
    swimmerClassObject.height = 1.68f;
    swimmerClassObject.weight = 49.5f;
    swimmerClassObject.gender = @"female";
    
    Undertaker* undertakerClassObject = [[Undertaker alloc] init];       //create object undertakerClassObject
    undertakerClassObject.name = @"Big Billy";                        // add properties undertakerClassObject
    undertakerClassObject.height = 1.91f;
    undertakerClassObject.weight = 95.f;
    undertakerClassObject.gender = @"male";
    undertakerClassObject.mood = @"angry";
    undertakerClassObject.power = @"strong";
    
    
    
    NSArray* arrayUnitedHumanClass = [[NSArray alloc]            //create array with all create objects
                            initWithObjects:humanClassObject, cyclistClassObject, runnerClassObject, swimmerClassObject, undertakerClassObject, nil];
    
    for (int i = (int)[arrayUnitedHumanClass count] - 1; i >= 0; i--)//[arrayUnitedHumanClass count] привел к типу int, чтоб убрать warning
    {
        
        NSLog(@"Name object is: %@", [[arrayUnitedHumanClass objectAtIndex:i] name]); //[arrayUnitedHumanClass objectAtIndex:i] show Class
        NSLog(@"Height object is: %.1f", [[arrayUnitedHumanClass objectAtIndex:i] height]);
        NSLog(@"Weight object is: %.1f", [[arrayUnitedHumanClass objectAtIndex:i] weight]);
        NSLog(@"Gender object is: %@", [[arrayUnitedHumanClass objectAtIndex:i] gender]);
        if ([[arrayUnitedHumanClass objectAtIndex:i] isKindOfClass:[Undertaker class]])//if Class is Undertaker - launch body operator
        {
            NSLog(@"Mood objects is: %@", [[arrayUnitedHumanClass objectAtIndex:i] mood]);
            NSLog(@"Power objects is: %@", [[arrayUnitedHumanClass objectAtIndex:i] power]);
                    }
        [[arrayUnitedHumanClass objectAtIndex:i] makeMovement];
        NSLog(@"****************************");
    }

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
