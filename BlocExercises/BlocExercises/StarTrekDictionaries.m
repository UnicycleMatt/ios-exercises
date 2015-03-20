//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return [characterDictionary objectForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *allFavoriteDrinksArray = [[NSMutableArray alloc] init];
    
    for (NSDictionary *characterDictionary in charactersArray) {
        [allFavoriteDrinksArray addObject:[characterDictionary objectForKey:@"favorite drink"]];
    }
    
    return allFavoriteDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSMutableDictionary *characterDictionaryWithQuote = [characterDictionary mutableCopy];
    [characterDictionaryWithQuote setObject:@"This is a memorable quote" forKey:@"quote"];
    
    return characterDictionaryWithQuote;
}

@end
