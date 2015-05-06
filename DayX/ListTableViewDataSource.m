//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Gamaliel Tellez on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "EntryController.h"
#import "Entry.h"

 static NSString *cellIdentifier = @"entryCell";
@implementation ListTableViewDataSource


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [EntryController sharedInstance].entries.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    
    
    UITableViewCell *cell = [UITableViewCell new];
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = entry.title;
    
    return cell;
    
}

@end
