//
//  Region.h
//  Top Regions
//
//  Created by Aleksey on 8/10/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "EasyMapping.h"
#import "Photo.h"

@class Photo;

NS_ASSUME_NONNULL_BEGIN

@interface Region : EKManagedObjectModel <EKManagedMappingProtocol>

// Insert code here to declare functionality of your managed object subclass

+ (Region *)regionWithDictionary:(NSDictionary *)dictionary
          inManagedObjectContext:(NSManagedObjectContext *)context;
+ (void)loadRegionsFromArray:(NSArray *)array
    intoManagedObjectContext:(NSManagedObjectContext *)context;

@end

NS_ASSUME_NONNULL_END

#import "Region+CoreDataProperties.h"
