//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    NSInteger higherNumber;
    NSInteger lowerNumber;
    
    if (number >= otherNumber) {
        higherNumber = number;
        lowerNumber = otherNumber;
    } else {
        higherNumber = otherNumber;
        lowerNumber = number;
    }
    
    NSString *numberString = [NSString stringWithFormat:@"%ld", (long)lowerNumber];
    while (higherNumber > lowerNumber) {
        lowerNumber++;
        numberString = [NSString stringWithFormat:@"%@%ld", numberString, (long)lowerNumber];
    }
    
    return numberString;
}

@end
