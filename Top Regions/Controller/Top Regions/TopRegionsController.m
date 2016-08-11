//
//  TopRegionsController.m
//  Top Regions
//
//  Created by Aleksey on 8/1/16.
//  Copyright © 2016 Aleksey. All rights reserved.
//

#import "TopRegionsController.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import "CoreDataController.h"
#import "DBRequestManager.h"

@interface TopRegionsController ()

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, strong) NSManagedObjectContext *mainContext;

@end

@implementation TopRegionsController

#pragma mark - Setters & Getters

- (NSManagedObjectContext *)mainContext
{
    if (!_mainContext) {
        CoreDataController *cdc = [(AppDelegate *)([UIApplication sharedApplication].delegate) coreDataController];
        _mainContext = [cdc getMainObjectContext];
    }
    
    return _mainContext;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [self setupView];
    [self loadTopRegions];
}

- (void)setupView
{
    [self initFetchResultsController];
}

#pragma mark - Load top regions

- (void)loadTopRegions
{
    [DBRequestManager getTopRegionsFromFlickrWithBlock:^(NSDictionary *response, NSError *error) {
        NSLog(@"Responce: %@", response);
    }];
}

#pragma mark - Fetch results controller

- (void)initFetchResultsController
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Region"];
    
}

#pragma mark - Table view data source

#pragma mark - Table view delegate

@end
