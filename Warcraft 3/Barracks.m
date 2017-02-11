//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    
    return self;
}

-(Footman *)trainFootman {
    if ([self canTrainFootman]) {
    _gold -= 135;
    _food -= 2;
    return [[Footman alloc] init];
    } else {
        return nil;
    }
}

-(BOOL)canTrainFootman {
    if ((_gold >= 135) && (_food >= 2)) {
        return YES;
    } else {
        return NO;
    }
}

- (Peasant*)trainPeasant
{
    if ([self canTrainPeasant]) {
        _gold -= 90;
        _food -= 5;
        return [[Peasant alloc] init];
    } else {
        return nil;
    }
}

- (BOOL)canTrainPeasant
{
    if ((_gold >= 90) && (_food >= 5)) {
        return YES;
    } else {
        return NO;
    }
}

@end
