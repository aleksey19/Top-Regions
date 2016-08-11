//
//  AppDelegate.h
//  Top Regions
//
//  Created by Aleksey on 7/15/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) CoreDataController *coreDataController;

@end

