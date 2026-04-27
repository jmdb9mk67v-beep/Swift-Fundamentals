import UIKit

var greeting = "Hello, Mr. Michael"
print(greeting)
var goodbye = "Goodbye! See you in class!"
// To convert Celsius to Fahrenheit we use this simple math calculation
// Multiply by 9, Divide by 5, Add 32

// OR we can multiply the Celsius by 1.8 and add 32 but since Mr. Michael
// did not ask for doubles, we will stick with integers.


/* function convertCelciusToFahrenheit */

func convertCelsiusToFahrenheit(celsius: Int) -> Int {
    let fahrenheit = (celsius * 9 / 5) + 32
    return fahrenheit
}

let test = convertCelsiusToFahrenheit(celsius: 19)
print("\(test)°F")

// End function

/* function typeTemperature */

func typeTemperature(celsius: Int) -> String {
    let type: String
    
    switch celsius {
    case ..<5:
        type = "Cold"
    case 5...12:
        type = "Cool"
    case 13...24:
        type = "Warm"
    default:
        type = "HOT!"
    }
    
    print("The temperature is \(type)")
    return type
}

let testType = typeTemperature(celsius: 33)

// End function typeTemperature

/* function analyzeTemperatures */

func analyzeTemperatures(from minTemp: Int, to maxTemp: Int) {
    let totalValues = (maxTemp - minTemp) + 1
    if totalValues < 5 {
        print("Error: Need at least 5 values.")
        return
    }
    
    var totalSum = 0
    
    for currentTemp in minTemp...maxTemp {
        totalSum += currentTemp
        let category = typeTemperature(celsius: currentTemp)
        print("\(currentTemp)°C is \(category)")
    }
    
    let average = Double(totalSum) / Double(totalValues)
    print("Overall Average: \(average)°C")
}
    
analyzeTemperatures(from: 4, to: 25)
    
// End analyzeTemperatures

print(goodbye)


/********* AI Reflection **********/


/*
 
 1. a)  I used AI as reference.
    b)  I asked AI "in my first function block of code where do i insert °F to have it print" and it gave me 2 options. "In the print statement" or "inside the function return"
    c)  I learned that instead of using an "if/else statement", I could use a "guard statement".  Even though it is fancier, I stuck with if/else.
 
 2. a)  I ran into a red line "invalid redeclation" error because I            duplicated my typeTemperature function in the last block of code       "analyzeTemperature function". So I had AI help me troubleshoot        it.
    b)  I used string interpolation \() to add the °F symbol in the print statement rather than changing the function to keep the math clean.
        And it looks better.

 3. a)  I learned to use integers to doubles like Double(totalSum) /           Double(totalValues) to avoid interger division traps.
    b)  Mapping out the logic with closed ranges (...) went well.  I learned that Swift will not execute if I have duplicates in the same file.
 
*/
 

