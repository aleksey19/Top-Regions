//
//  DBRequestManager.h
//  Top Regions
//
//  Created by Aleksey on 8/10/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CompletionBlock)(NSDictionary *response, NSError *error);

@interface DBRequestManager : NSObject

+ (void)getTopRegionsFromFlickrWithBlock:(CompletionBlock)block;

@end
