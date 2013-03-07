//
//  ViewController.h
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/5/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BeerInfo.h"

@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *beerItems;
    NSMutableArray *beers;
}

@end
