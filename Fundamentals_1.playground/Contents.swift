import UIKit

var greeting = "Hello, Class"

// 1. The Array: Ordered Data
var meganSetlist: [String] = [
    "Lucky",
    "I'm Not Pretty",
    "Am I Okay?",
    "Tennessee Orange"
]

meganSetlist.append("No Caller ID")

/* Arrays guarantee order */

// 2. The Set: Unique, Unordered Data
var tourLocations: Set<String> = [
    "Georgia",
    "Texas",
    "Ontario",
    "Tennessee",
    "Ontario"
]

let isVisiting = tourLocations.contains("Ontario")
print("Visiting Ontario? \(isVisiting)")

/* Sets automatically drops duplicates. */

// 3. The Dictionary: Key-Value Lookups
var billboardStats: [String: Int] = [
    "Tennessee Orange": 30,
    "I'm Not Pretty": 14,
    "Am I Okay": 9
]

func checkChartPosition(songTitle: String, statsDictionary: [String: Int]) {
    if let peakPosition = statsDictionary[songTitle] {
        print("\(songTitle) peaked at \(peakPosition)")
    } else {
        print("No chart data for \(songTitle)")
    }
}

checkChartPosition(songTitle: "Am I Okay", statsDictionary: billboardStats)
checkChartPosition(songTitle: "Ghost", statsDictionary: billboardStats)

/* Dictionaries are your look-up tables. */

/* Strings */

let artistName = "Ella Langley"
for character in artistName {
    print(character)
}

/* Grapheme Clusters */

let countryStar = "Ella Langley 🎸"
print("Total count: \(countryStar.count)")

let emoji: Character = "🎸"


for scalar in emoji.unicodeScalars {
   
    print("Scalar: \(scalar) - Value: \(scalar.value)")
}
// Result: This will now correctly loop through the
// underlying pieces of the guitar emoji cluster.

let name = "Matt"

// 1. Create the 'key' (index)
// We start at the beginning and offset by 3
let index = name.index(name.startIndex, offsetBy: 3)

// 2. Use that key to get the character
let fourthChar = name[index]

print(fourthChar)

/* Indexing Strings */

let artist = "Megan Moroney"
let firstIndex = artist.startIndex
let firstChar = artist[firstIndex] // "M"

// 2. Getting a character at a specific position (e.g., the 7th)
// We start at the beginning and offset by 6
let seventhIndex = artist.index(artist.startIndex, offsetBy: 6)
let seventhChar = artist[seventhIndex] // "M" (the start of Moroney)

// 3. Getting the last character 'endIndex is actually the position
// AFTER the last character so we look one step back
let lastIndex = artist.index(before: artist.endIndex)
let lastChar = artist[lastIndex] // "y"
print ("First: \(firstChar), Seventh: \(seventhChar), Last: \(lastChar)")

/****** Swift substring or slice ******/
let festival = "Heartland Harmony"

// 1. Define the start and end of our range
let start = festival.startIndex
let end = festival.index(start, offsetBy: 9)

// 2. Create the substring using the range
// Note: This creates a 'Substring' type, which is super memory efficient
let firstWord = festival[start..<end]

print(firstWord) // "Heartland"

// 3. Convert it back to a String if you need to store it long-term
let savedWord = String(firstWord)

/* Mini-Eggs */
let studentName = "Lam Nguyen"
// we offset by 5 to get the 6th
let sixthIndex = studentName.index(studentName.startIndex, offsetBy: 5)
let sixthChar = studentName[sixthIndex]
print("The sixth character is: \(sixthChar)") // result: "N"
// Iterate through individual characters and print Unicode code points
print("\n--- Unicode Code Points ---")
for char in studentName {
    for scaler in char.unicodeScalars {
        print("\(char): \(scaler.value)")
    }
}

/* Reversed Collection */
// the original string
let singer = "Lainey Wilson"
//this creates the wrapper
let backwardsArtist = singer.reversed()

// let's grab the 'W' from the backwards version
// in "nosliW yeniaL", 'W' is at index 6 (including the space)
let wIndex = backwardsArtist.index(backwardsArtist.startIndex, offsetBy: 6)

let theLetterW = backwardsArtist[wIndex]
print("The character is: \(theLetterW)")

let finishedString = String(backwardsArtist)
print("Full reversed: \(finishedString)")

let swiftiesArt = #"""
  ____ __          __ _____  ______  _______  _____  ______   _____ 
 / ____|\ \        / /|_   _||  ____||__   __||_   _||  ____| / ____|
| (___   \ \  /\  / /   | |  | |__      | |     | |  | |__   | (___  
 \___ \   \ \/  \/ /    | |  |  __|     | |     | |  |  __|   \___ \ 
 ____) |   \  /\  /    _| |_ | |        | |    _| |_ | |____  ____) |
|_____/     \/  \/    |_____||_|        |_|   |_____||______||_____/ 
"""#

print(swiftiesArt)

/*** --- Mini-Eggs --- ***/

let star = "Jelly Roll"
func nameLength(fullName: String) -> (Int, Int) {
    // we look for the first instance of a space
    if let spaceIndex = fullName.firstIndex(of: " ") {
        
        // measure from the very start to the space
        let firstLength = fullName.distance(from: fullName.startIndex, to: spaceIndex)
        // move the "cursor" one position past the space
        let lastNameStart = fullName.index(after: spaceIndex)
        // measure from the start of the last name to the very end
        let lastLength = fullName.distance(from: lastNameStart, to: fullName.endIndex)
        return (firstLength, lastLength)
        
    }
    return (0, 0)
}
// executing the function
let (first, last) = nameLength(fullName: star)
print("First name length: \(first)") // 5 (J-e-l-l-y)
print("Last name length: \(last)") // 4 (R-o-l-l)

/*** Character Properties ***/

let letter: Character = "J"
print(letter.isASCII) // true

// non-ASCII (Unicode/Emoji)
let emojiFire: Character = "🔥"
print(emoji.isASCII) // false
// Testing a full name like Jelly Roll
let countryArtist = "Jelly Roll"
for char in countryArtist {
    print("\(char) is ASCII: \(char.isASCII)")
}

// Let's use a mixed string to see the different properties in action
let mixedString = "Jelly 123 ! ๙ f"

for char in mixedString {
    if char.isLetter {
        print("'\(char)' is a Letter")
    } else if char.isNumber {
        print("'\(char)' is a Number")
    } else if char.isWhitespace {
        print("'\(char)' is Whitespace")
    } else if char.isPunctuation {
        print("'\(char)' is Punctuation")
    } else {
        print("'\(char)' is something else!")
    }
}
