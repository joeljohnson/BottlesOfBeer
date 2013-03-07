//
//  BeerInfo.m
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/6/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import "BeerInfo.h"

@implementation BeerInfo

-(id)init
{
    if (self = [super init]) {
        
    }
    return self;
}

-(NSMutableArray *)beerNames
{
    beerNames = [[NSMutableArray alloc] initWithObjects:@"60 Minute IPA ",@"90 Minute IPA ",@"120 Minute IPA ",@"Leviathan Imperial IPA", @"Pliny The Elder	", @"Pliny The Younger", @"Moylander Double IPA",@"Hopsickle",@"Bengali Tiger",@"Titan IPA",@"Green Flash Imperial IPA",@"Hercules Double IPA",@"Goose Island Imperial IPA",@"Centennial IPA",@"Jai Alai IPA",@"Brewdog Atlantic IPA",@"Tactical Nuclear Penguin",@"Two Hearted Ale",@"Racer 5",@"Brew Free! Or Die IPA",nil];
    
    return beerNames;
}

-(NSMutableArray *)beerBrewerName
{
    return beerBrewerName;
}
@end
