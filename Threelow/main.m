//
//  main.m
//  Threelow
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//
//
//To play, a player rolls five dice.
//The goal is to get the lowest score possible.
//Each roll they must choose to hold at least one of the dice, but they can choose to hold as many as five dice.
//If they have un-held dice, they re-roll until all five dice are held.
//
//Threes are worth 0 points (hence the name of the game),
//every other roll is worth it's face value.
//Whoever has the lowest score after everyone has had a complete turn wins the game (note: gambling is illegal).

// ⚀ ⚁ ⚂ ⚃ ⚄ ⚅

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //need to make the game print out the instructions, make a game loop, take interaction, update the models, print the info after each turn
        
      

  
        GameController *gameController = [[GameController alloc]init];
        BOOL gameOn = YES;
        
        while (gameOn) {
            
            
            printf("Welcome to Threelow!\nThis is how the game works! To start the game, 5 dice will be rolled.\nYou will then have the option of picking up / holding 1 to 5 of the dice.\nThe object of the game is to have the lowest score possible and you lock in your score by picking up a die./nEvery turn, you must hold at least 1 dice.\nPicking up a 3, counts as a zero for your score (best case scenario!), all other die represent their face value.\nYou must hold 1 incremental die each turn.\nWhen you roll, all held dice will be held for the rest of the game. If you accidentally hold a dice, you can unhold it by resending the hold <number> command.\n\nPlease choose from the following options:\nType 'hold <number from 1-5>' to choose how many dice to hold. You can re-enter this command if you would like to pick up 2 die in the same turn.\nType 'roll' to roll the dice that you are holding.\nType 'reset dice' to unhold all dice that you are able to unhold (ones that were held in this turn)\nType 'reset game' to reset your score and unhold all dice");
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *parsedString = [result stringByTrimmingCharactersInSet:charSet];

            if([parsedString containsString:@"roll"]) {
                [gameController rollDice];
                
            } else if ([parsedString containsString:@"hold"]){
                NSArray *components = [parsedString componentsSeparatedByString:@" "];
                NSString *holdNumber = components[1];
                NSInteger intHoldNumber = [holdNumber integerValue];
                // NSInteger test = [components[1] integerValue]; <- can do it in one line
                [gameController holdDie:intHoldNumber];
            } else if ([parsedString containsString:@"reset dice"]) {
                [gameController resetHeldDice];
            } else if ([parsedString containsString:@"reset dice"]) {
                
            }
                
            }


        
        }
        
    
    return 0;
}
