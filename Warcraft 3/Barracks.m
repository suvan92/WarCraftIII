//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"
#import "Peasant.h"

@implementation Barracks

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gold = 1000;
        _food = 80;
    }
    return self;
}

-(Footman *)trainFootman
{
    if ([self canTrainFootman]) {
        Footman *footman = [Footman new];
        self.gold -= 135;
        self.food -= 2;
        
        return footman;
    } else {
        return nil;
    }
}

-(BOOL)canTrainFootman {
    if ((self.gold >= 135) && (self.food > 1)) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)canTrainPeasant {
    if((self.gold >= 90) && (self.food >= 5)) {
        return YES;
    } else {
        return NO;
    }
    
    
}


- (Peasant*)trainPeasant {
    if ([self canTrainPeasant]) {
        Peasant *peasant = [[Peasant alloc] init];
        self.gold -= 90;
        self.food -= 5;
        
        return peasant;
    } else {
        return nil;
    }
}

@end
