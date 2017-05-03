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
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
//        Dice *dice1 = [[Dice alloc]init];
//        Dice *dice2 = [[Dice alloc]init];
//        Dice *dice3 = [[Dice alloc]init];
//        Dice *dice4 = [[Dice alloc]init];
//        Dice *dice5 = [[Dice alloc]init];
//        
//        [dice1 randomizeValue];
//        [dice2 randomizeValue];
//        [dice3 randomizeValue];
//        [dice4 randomizeValue];
//        [dice5 randomizeValue];
//        
        
        
//        NSLog(@"\nDice 1: %ld\nDice 2: %ld\nDice 3: %ld\nDice 4: %ld\nDice 5: %ld",(long)dice1.currentValue,(long)dice2.currentValue,(long)dice3.currentValue,(long)dice4.currentValue,(long)dice5.currentValue);
        
        
//        char inputChars[255];
//        printf("Type roll to roll the dice: ");
//        fgets(inputChars, 255, stdin);
//        NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
//        NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//        NSString *parsedString = [result stringByTrimmingCharactersInSet:charSet];
  
       
//        BOOL gameOn = YES;
//        
//        while (gameOn) {
//            
//            char inputChars[255];
//            printf("Welcome to Threelow!\nPlease choose from the following options:\nType 'hold <number from 1-5>' to choose how many dice to hold.\nType 'roll' to roll the dice that you are holding.");
//            fgets(inputChars, 255, stdin);
//            NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
//            NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//            NSString *parsedString = [result stringByTrimmingCharactersInSet:charSet];
//
//            if([parsedString containsString:@"roll"]) {
//                NSInteger integer = 1;
//                for (Dice *dice in heldDice) {
//                    
//                    [dice randomizeValue];
//                    NSLog(@"Dice %li: %lu",(long)integer, dice.currentValue);
//                    integer ++;
//                    
//                }
//            } else if ([parsedString containsString:@"hold"]){
//                NSArray *components = [parsedString componentsSeparatedByString:@" "];
//                NSString *holdNumber = components[1];
//                NSInteger intHoldNumber = [holdNumber integerValue];
//                
//            
//               // NSInteger test = [components[1] integerValue]; <- can do it in one line
//            }
//                
//            }
//            
//            
//            
        }
        
    
    return 0;
}
