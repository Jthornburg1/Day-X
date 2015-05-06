//
//  EntryController.h
//  DayX
//
//  Created by Gamaliel Tellez on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject
@property (nonatomic,strong,readonly) NSArray *entries;


+ (EntryController *)sharedInstance;
- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;



@end
