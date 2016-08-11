//
//  Photo.m
//  Top Regions
//
//  Created by Aleksey on 8/10/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import "Photo.h"

@implementation Photo

// Insert code here to add functionality to your managed object subclass

+ (EKManagedObjectMapping *)objectMapping
{
    return [EKManagedObjectMapping mappingForEntityName:@"Photo" withBlock:^(EKManagedObjectMapping *mapping) {
        [mapping mapKeyPath:@"" toProperty:@""];
    }];
}

+ (Photo *)photoWithDictionary:(NSDictionary *)dictionary
        inManagedObjectContext:(NSManagedObjectContext *)context
{
    Photo *photo = nil;
    
    return photo;
}

+ (void)loadPhotosFromArray:(NSArray *)array
   intoManagedObjectContext:(NSManagedObjectContext *)context
{
    
}

@end
