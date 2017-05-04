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
    
    //if (self.diceArray[internalIndex].isHeld)
    
    
    Dice *dice = [self.diceArray objectAtIndex:internalIndex];
    if (dice.isHeld) {
        if (dice.isLockedIn) {
            NSLog(@"Cannot unhold a die that was picked up in a previous turn");
        } else {
            [dice setIsHeld:NO];
        }
    } else {
        [dice setIsHeld:YES];
    }
    
    
    [self printDiceValues];
    
}

- (void)printDiceValues {
    
    NSLog(@"Your current score is: %lu.",self.currentScore);
    
    for (Dice* dice in self.diceArray){
        if (dice.isHeld) {
            NSLog(@"%lu: [%lu]",(unsigned long)[self.diceArray indexOfObject:dice]+1, dice.currentValue);
        } else {
            NSLog(@"%lu: %lu",(unsigned long)[self.diceArray indexOfObject:dice]+1, dice.currentValue);
        }
    }
    
}

- (void)resetHeldDice {
    
    for (Dice *dice in self.diceArray) {
        if (dice.isLockedIn == NO) {
            [dice setIsHeld:NO];
        }
        
    }
    [self printDiceValues];
}

-(void)rollDice {
    for (Dice *dice in self.diceArray) {
        if ((dice.isHeld) && (!dice.isLockedIn)){
            //need to account for 3 = 0 points
            if (dice.currentValue == 3){
                self.currentScore += 0;
            } else {
                self.currentScore += dice.currentValue;
            }
    }
    }
    for (Dice *dice in self.diceArray) {
        if (dice.isHeld) {
            dice.isLockedIn = YES;
        } else if (dice.isHeld == NO) {
            [dice randomizeValue];
        }
    }

    [self printDiceValues];
}

- (void)resetGame {
    
    for (Dice *dice in self.diceArray) {
        dice.isHeld = NO;
        dice.isLockedIn = NO;
    }
    
}

@end
