//
//  EntryController.m
//  DayX
//
//  Created by Gamaliel Tellez on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()
@property (nonatomic, strong) NSArray *entries;

@end

@implementation EntryController

+(EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
    sharedInstance = [[EntryController alloc]init];
    sharedInstance.entries = [[NSArray alloc] init];
});
    return sharedInstance;
}

-(void)addEntry:(Entry *)entry {
    
//    Implement the removeEntry method: it needs to do the reverse.
   // It should create a mutable copy of the entries array,
    //remove the entry that was passed in, and then re-set the controllers Entries array.
    NSMutableArray *entriesMutableArray = [[NSMutableArray alloc] initWithArray:self.entries];
    [entriesMutableArray removeObject:entry];
    self.entries = entriesMutableArray;
    
}

-(void)removeEntry:(Entry *)entry {
//    -Implement the addEntry method: it needs to create a mutable version of the controller's entries array,
//    -dd the entry that's passed in,
//    -and then re-set the controller's Entries array.

    NSMutableArray *entriesMutableArray = [[NSMutableArray alloc] initWithArray:self.entries];
    [entriesMutableArray addObject:entry];
    self.entries = entriesMutableArray;
}

- (Entry *)createEntryWithTittle:(NSString *)title withBodyText:(NSString *)bodyText {
    
    Entry *newEntry = [[Entry alloc]init];
    newEntry.title = title;
    newEntry.bodyText = bodyText;
    newEntry.timeStamp = [NSDate date];
    [self addEntry:newEntry];
    return newEntry;
}

@end
