//
//  BeerInfo.h
//  BottlesOfBeer
//
//  Created by Joel Johnson on 3/6/13.
//  Copyright (c) 2013 Joel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeerInfo : NSObject
{
    NSMutableArray *beerNames;
    NSMutableArray *beerBrewerName;
    NSMutableArray *beerPics;
}

-(NSMutableArray *)beerNames;
-(NSMutableArray *)beerBrewerName;
-(NSMutableArray *)beerPics;


@end
