//
//  Entry.h
//  DayX
//
//  Created by Gamaliel Tellez on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *bodyText;
@property (nonatomic,strong) NSDate *timeStamp;

@end
