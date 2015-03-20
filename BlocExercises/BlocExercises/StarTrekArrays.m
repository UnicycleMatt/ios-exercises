//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {

    NSArray *arrayOfCharacters = [characterString componentsSeparatedByString:@";"];
    return arrayOfCharacters;

}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *stringOfCharacters = [characterArray componentsJoinedByString:@";"];
    return stringOfCharacters;

}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *characterCopyArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [characterCopyArray sortUsingDescriptors:@[sortDescriptor]];
    return characterCopyArray;

}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

    NSMutableArray *characterCopyArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [characterCopyArray filterUsingPredicate:containsWorf];
    
    if (characterCopyArray.count >= 1) {
        return YES;
    } else {
        return NO;
    }

}

@end
