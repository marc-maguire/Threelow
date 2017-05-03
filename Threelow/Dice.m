//
//  Dice.m
//  Threelow
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomizeValue {
    
    self.currentValue = arc4random_uniform(5)+1;
    
}

@end
