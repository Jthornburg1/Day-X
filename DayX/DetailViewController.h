//
//  DetailViewController.h
//  DayX
//
//  Created by Gamaliel Tellez on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"


@interface DetailViewController : UIViewController

@property (nonatomic,strong) Entry *entry;

- (BOOL)updateWithEntry:(Entry*) entry;
@end
