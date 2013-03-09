//
//  ViewController.m
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/5/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import "ViewController.h"
#import "CustomBeerTableCell.h"
#import "BeerDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    BeerInfo *bNames = [[BeerInfo alloc] init];
    beers = [bNames beerNames];
    BeerInfo *brewerNames = [[BeerInfo alloc] init];
    brewers = [brewerNames beerBrewerName];
    
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
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
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
             cell.beerLabel.text = [beers objectAtIndex:indexPath.row];
             cell.brewerLabel.text = [brewers objectAtIndex:indexPath.row];
             
         }
        }
        
    }
    //cell.textLabel.text = [beers objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BeerDetailViewController *bDeets = [[BeerDetailViewController alloc] initWithNibName:@"BeerDetailView" bundle:nil];
    if (bDeets != nil)
    {
        bDeets.BeerNameLabel = [beers objectAtIndex:indexPath.row];
        NSLog(@"%@", bDeets.BeerNameLabel);
        
        bDeets.BrewerNameLabel = [brewers objectAtIndex:indexPath.row];
        
        [self presentViewController:bDeets animated:true completion:nil];

        
    }
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [beers removeObjectAtIndex:indexPath.row];
        [beerItems deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}


-(IBAction)editPressed:(id)sender
{
    if (beerItems.editing == true)
    {
        [beerItems setEditing:false animated:true];
    }
    else
    {
        [beerItems setEditing:true animated:true];
    }
    
}
@end
