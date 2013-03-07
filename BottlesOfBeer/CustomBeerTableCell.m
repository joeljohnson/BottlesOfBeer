//
//  CustomBeerTableCell.m
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/6/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import "CustomBeerTableCell.h"

@implementation CustomBeerTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
