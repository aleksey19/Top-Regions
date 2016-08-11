//
//  Photo+CoreDataProperties.h
//  Top Regions
//
//  Created by Aleksey on 8/10/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Photo.h"
#import "Region.h"
@class Region;

NS_ASSUME_NONNULL_BEGIN

@interface Photo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *photo_id;
@property (nullable, nonatomic, retain) NSDate *date_upload;
@property (nullable, nonatomic, retain) NSNumber *owner_id;
@property (nullable, nonatomic, retain) NSString *owner_name;
@property (nullable, nonatomic, retain) NSString *place_id;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSNumber *woe_id;
@property (nullable, nonatomic, retain) NSString *photo_description;
@property (nullable, nonatomic, retain) NSNumber *latitude;
@property (nullable, nonatomic, retain) NSNumber *longitude;
@property (nullable, nonatomic, retain) Region *region;

@end

NS_ASSUME_NONNULL_END
