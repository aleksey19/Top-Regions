//
//  CoreDataController.h
//  Top Regions
//
//  Created by Aleksey on 8/9/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataController : NSObject

- (NSManagedObjectContext *)getMainObjectContext;

@end
