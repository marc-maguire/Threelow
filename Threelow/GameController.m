//
//  GameController.m
//  Threelow
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

-(void)holdDie:(NSInteger)index {
    
}

- (void)rollDiceandPrintValues {
    
    for (Dice* dice in self.diceArray){
        if (dice.isHeld) {
            NSLog(@"%lu: [%lu]",(unsigned long)[self.diceArray indexOfObject:dice], dice.currentValue);
        } else {
            NSLog(@"%lu: %lu",(unsigned long)[self.diceArray indexOfObject:dice], dice.currentValue);
        }
    }
}



@end
