import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return "My favorite cheese is \(cheese)"
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]

// Add 5 to this array
var numberArrayMutable = numberArray + [5]


let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var numberDictionaryMutable = numberDictionary
numberDictionaryMutable[5] = "five"
numberDictionaryMutable
/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively

for number in 1...10 {
    println("\(number)")
}

// Use a half-closed range loop to print 1 - 10, inclusively

for number in 1..<11 {
    println("\(number)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    
    var favoriteDrinks: [String] = []
    
    for character in characters {
        if ((character["favorite drink"]) != nil) {
            favoriteDrinks.append(character["favorite drink"]!)
        }
    }
    return favoriteDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func arrayToString(foodArray: Array<String>) -> String {
    let stringRepresentation = ";".join(foodArray)
    return stringRepresentation
}

arrayToString(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

let cerealSortedAlphabetically = sorted(cerealArray, {(s1: String, s2: String) -> Bool in
    return s1 < s2
})







