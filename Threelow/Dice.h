//
//  Dice.h
//  Threelow
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSInteger currentValue;
@property (nonatomic) BOOL isHeld;
@property (nonatomic) BOOL isLockedIn;

- (void)randomizeValue;


@end
