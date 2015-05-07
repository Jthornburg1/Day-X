//
//  Entry.m
//  DayX
//
//  Created by Gamaliel Tellez on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

@implementation Entry

static const NSString * titleKey = @"titleKey";
static const NSString * bodyTextKey = @"bodyTextKey";
static const NSString * timeStampKey = @"timeStampKey";


- (instancetype) initEntryWithDictionary: (NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.title = dict[titleKey];
        self.bodyText = dict[bodyTextKey];
        self.timeStamp = dict[timeStampKey];
    }
    return self;
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    
    if (self.title) {
        dict[titleKey] = self.title;
    }
    if (self.bodyText) {
        dict[bodyTextKey] = self.bodyText;
    }
    if (self.timeStamp) {
        dict[titleKey] = self.timeStamp;
    }
    return dict;
}


@end



