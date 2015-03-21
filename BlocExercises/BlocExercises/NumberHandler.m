//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int doubleNumberInt = [number intValue] * 2;
    return [NSNumber numberWithInt:doubleNumberInt];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *arrayOfNumbersMutable = [[NSMutableArray alloc] init];
    
    if (number > otherNumber) {
        NSInteger tempNumber = number;
        number = otherNumber;
        otherNumber = tempNumber;
    }
    
    while (number <= otherNumber) {
        [arrayOfNumbersMutable addObject:[NSNumber numberWithInteger: number]];
        number++;
    }
    
    return arrayOfNumbersMutable;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSNumber *minNumber = [arrayOfNumbers valueForKeyPath:@"@min.self"];
    return [minNumber integerValue];
}

@end
