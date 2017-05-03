//
//  GameController.h
//  Threelow
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//


//you roll 5 dice, look at the values and pick the lowest value to hold, then you roll the remaining
//you must pick up one of the values
//you CAN pick up all of the values

#import <Foundation/Foundation.h>


@interface GameController : NSObject

@property (nonatomic, copy) NSMutableArray *diceArray;
@property (nonatomic) NSInteger currentScore;

- (void)holdDie:(NSInteger)index;

- (void)PrintDiceValues;
- (void)resetHeldDice;





@end
