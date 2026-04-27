import UIKit

var greeting = "Hello, World"
print(greeting)
var goodbye = "Goodbye! See you next time!"
// To convert Celsius to Fahrenheit we use this simple math calculation
// Multiply by 9, Divide by 5, Add 32

// OR we can multiply the Celsius by 1.8 and add 32 


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



 

