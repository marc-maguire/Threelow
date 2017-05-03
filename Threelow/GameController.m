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

//track amount of dice rolls to account for

-(instancetype)init {
    if (self = [super init]) {
        
        Dice *dice1 = [[Dice alloc]init];
        [dice1 randomizeValue];
        Dice *dice2 = [[Dice alloc]init];
        [dice2 randomizeValue];
        Dice *dice3 = [[Dice alloc]init];
        [dice3 randomizeValue];
        Dice *dice4 = [[Dice alloc]init];
        [dice4 randomizeValue];
        Dice *dice5 = [[Dice alloc]init];
        [dice5 randomizeValue];
        _diceArray = [[NSMutableArray alloc]init];
        [_diceArray addObject:dice1];
        [_diceArray addObject:dice2];
        [_diceArray addObject:dice3];
        [_diceArray addObject:dice4];
        [_diceArray addObject:dice5];
        _currentScore = 0;
    }
    return self;
}

-(void)holdDie:(NSInteger)index {
    
    NSInteger internalIndex = index -1;
    
    for (Dice *dice in self.diceArray) {
        if (dice == [self.diceArray objectAtIndex:internalIndex]) {
            if (dice.isHeld == YES) {
                [dice setIsHeld:NO];
            } else {
                [dice setIsHeld:YES];
            }
        }
    }
    
}

- (void)PrintDiceValues {
    
    for (Dice *dice in self.diceArray) {
        if (dice.isHeld) {
            self.currentScore += dice.currentValue;
        }
    }
    NSLog(@"Your current score is: %lu.",self.currentScore);
    
    for (Dice* dice in self.diceArray){
        if (dice.isHeld) {
            NSLog(@"%lu: [%lu]",(unsigned long)[self.diceArray indexOfObject:dice], dice.currentValue);
        } else {
            NSLog(@"%lu: %lu",(unsigned long)[self.diceArray indexOfObject:dice], dice.currentValue);
        }
    }

}

- (void)resetHeldDice {
    
    for (Dice *dice in self.diceArray) {
        [dice setIsHeld:NO];
    }
    
}

@end
