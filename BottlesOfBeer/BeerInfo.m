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
    beerNames = [[NSMutableArray alloc] initWithObjects:@"60 Minute IPA",@"90 Minute IPA",@"120 Minute IPA",@"Leviathan Imperial IPA", @"Pliny The Elder", @"Pliny The Younger", @"Moylander Double IPA",@"Hopsickle",@"Bengali Tiger",@"Titan IPA",@"Green Flash Imperial IPA",@"Hercules Double IPA",@"Goose Island Imperial IPA",@"Centennial IPA",@"Jai Alai IPA",@"Brewdog Atlantic IPA",@"Tactical Nuclear Penguin",@"Two Hearted Ale",@"Racer 5",@"Brew Free! Or Die IPA",nil];
    
    return beerNames;
}

-(NSMutableArray *)beerBrewerName
{
    beerBrewerName = [[NSMutableArray alloc] initWithObjects:@"Dogfish Head Brewery",@"Dogfish Head Brewery",@"Dogfish Head Brewery",@"Harpoon Brewery",@"Russian River Brewing Company",@"Russian River Brewing Company",@"Moylan's",@"Moylan's",@"Sixpoint",@"Great Divide",@"Green Flash",@"Great Divide",@"Goose Island",@"Founders",@"Cigar City",@"BrewDog",@"BrewDog",@"Bell's Brewery",@"Bear Republic",@"21st Amendment",nil];
    return beerBrewerName;
}

-(NSMutableArray *)beerPics
{
    beerPics = [[NSMutableArray alloc] initWithObjects:@"60minute.jpg",@"90minute.jpg",@"120minute.jpg",@"leviathan.jpg",@"plinytheelder.jpg",@"plinytheyounger.jpg",@"moylansdoubleipa.jpg",@"hopsickle.jpg",@"bengali.jpg",@"titan.jpg",@"greenflash.png",@"hercules.jpg",@"gooseisland.jpg",@"centennial.jpg",@"jaialai.jpg",@"atlanticIPA.jpg",@"tacticalnuclearpenguin.jpg",@"twohearted.jpg",@"Racer5.jpg",@"brewfreeordie.png", nil];
    return beerPics;
}
@end
