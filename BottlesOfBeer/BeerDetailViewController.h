//
//  BeerDetailViewController.h
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/7/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BeerDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *BeerNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *BrewerNameLabel;


-(IBAction)closeDetailView:(id)sender;
@end
