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
        [mapping mapKeyPath:@"dateupload" toProperty:@"date_upload"];
        [mapping mapKeyPath:@"description.content" toProperty:@"description"];
        [mapping mapKeyPath:@"id" toProperty:@"photo_id"];
        [mapping mapKeyPath:@"latitude" toProperty:@"latitude"];
        [mapping mapKeyPath:@"longitude" toProperty:@"longitude"];
        [mapping mapKeyPath:@"owner" toProperty:@"owner_id"];
        [mapping mapKeyPath:@"ownername" toProperty:@"owner_name"];
        [mapping mapKeyPath:@"place_id" toProperty:@"place_id"];
        [mapping mapKeyPath:@"title" toProperty:@"title"];
        [mapping mapKeyPath:@"woeid" toProperty:@"woe_id"];
    }];
}

+ (Photo *)photoWithDictionary:(NSDictionary *)dictionary
        inManagedObjectContext:(NSManagedObjectContext *)context
{
    Photo *photo = nil;

    NSString *photo_id = dictionary[@"id"];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photo"];
    request.predicate = [NSPredicate predicateWithFormat:@"photo_id = %@", photo_id];
    
    NSError *error = nil;
    NSArray *photos = [context executeFetchRequest:request error:&error];
    
    if (error || (photos.count > 1) || !photos) {
#warning handle
    }
    else if (photos.count == 1) {
        photo = [photos lastObject];
    }
    else if (!photos.count) {
        photo = [Photo objectWithProperties:dictionary inContext:context];
    }
    
    return photo;
}

+ (void)loadPhotosFromArray:(NSArray *)array
   intoManagedObjectContext:(NSManagedObjectContext *)context
{
    for (NSDictionary *photo in array) {
        [self photoWithDictionary:photo inManagedObjectContext:context];
    }
}

@end
