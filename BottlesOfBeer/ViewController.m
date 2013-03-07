//
//  ViewController.m
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/5/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import "ViewController.h"
#import "CustomBeerTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    BeerInfo *bNames = [[BeerInfo alloc] init];
    beers = [bNames beerNames];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return beers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
       
    CustomBeerTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomBeerCell" owner:nil options:nil];
        
        for (UIView *view in views)
        {
         if([view isKindOfClass:[CustomBeerTableCell class]])
         {
             cell = (CustomBeerTableCell*)view;
             cell.textLabel.text = [beers objectAtIndex:indexPath.row];
             
         }
        }
        
    }
    //cell.textLabel.text = [beers objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d", indexPath.row);
}
@end
