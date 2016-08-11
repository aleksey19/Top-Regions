//
//  Photo.h
//  Top Regions
//
//  Created by Aleksey on 8/10/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "EasyMapping.h"
#import "Region.h"

NS_ASSUME_NONNULL_BEGIN

@interface Photo : EKManagedObjectModel <EKManagedMappingProtocol>

// Insert code here to declare functionality of your managed object subclass

+ (Photo *)photoWithDictionary:(NSDictionary *)dictionary
        inManagedObjectContext:(NSManagedObjectContext *)context;
+ (void)loadPhotosFromArray:(NSArray *)array
    intoManagedObjectContext:(NSManagedObjectContext *)context;

@end

NS_ASSUME_NONNULL_END

#import "Photo+CoreDataProperties.h"
