//
//  DBRequestManager.m
//  Top Regions
//
//  Created by Aleksey on 8/10/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import "DBRequestManager.h"
#import "FlickrFetcher.h"

@interface DBRequestManager ()

@property (nonatomic, strong) NSMutableArray *lastPhotos;

@end

@implementation DBRequestManager

#pragma mark - Setters & Getters

- (NSMutableArray *)lastPhotos
{
    if (!_lastPhotos) {
        _lastPhotos = [NSMutableArray new];
    }
    return _lastPhotos;
}

#pragma mark - Calculate top regions

+ (void)getTopRegionsFromFlickrWithBlock:(CompletionBlock)block
{
    [self getLastPhotosWithBlock:block];
}

#pragma mark - Request data

+ (void)getLastPhotosWithBlock:(CompletionBlock)block
{
    NSURL *photosURL = [FlickrFetcher URLforRecentGeoreferencedPhotos];
    
    dispatch_queue_t requestLastPhotos = dispatch_queue_create("fetch photos from flickr", NULL);
    dispatch_async(requestLastPhotos, ^{
        NSData *jsonData = [NSData dataWithContentsOfURL:photosURL];
        NSDictionary *photosDictionary = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                         options:0
                                                                           error:nil];
        NSArray *photos = [photosDictionary valueForKeyPath:@"photos.photo"];
        NSLog(@"Photos: %@", photos);
    });
}

@end
