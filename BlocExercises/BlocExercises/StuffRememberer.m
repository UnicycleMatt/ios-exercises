//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayRemember = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.arrayRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.arrayCopy;
}

- (CGFloat) floatYouShouldRemember {
    return self.floatRemember;
}

@end