//
//  main.swift
//  TemperatureConverter
//
//  Created by Charley Sun on 2021-02-02.
//

import Foundation

/// The functions that does everything.
/// - Parameters:
///   - from: The system that the user has chosen.
///   - to: The system that the user wants to convert to.
///   - value: The degrees that the user puts in.
/// - Returns: The final result
func temperatureConverter(from: String, to: String, value: Double) -> String {
    
    var isCelsius = false
    var isFahrenheit = false
    var isKelvin = false
    var convertToCelsius = false
    var convertToFahrenheit = false
    var convertToKelvin = false
    
    
    switch from {
    case "1":
        isCelsius = true
    case "2":
        isFahrenheit = true
    case "3":
        isKelvin = true
    default:
        break
    }
    
    switch to {
    case "1":
        convertToCelsius = true
    case "2":
        convertToFahrenheit = true
    case "3":
        convertToKelvin = true
    default:
        break
    }
    
    if isCelsius {
        if convertToCelsius == true {
            return String(value)
        } else if  convertToFahrenheit == true {
            return String(value * 1.8 + 32)
        } else if convertToKelvin {
            return String(value + 273.15)
        }
    }
    
    if isFahrenheit {
        if convertToCelsius == true {
            return String((value - 32) / 1.8)
        } else if convertToFahrenheit == true {
            return String(value)
        } else if convertToKelvin == true {
            return String((value - 32) * 1.8 + 273.15)
        }
    }
    
    if isKelvin {
        if convertToCelsius == true {
            return String(value - 273.15)
        } else if convertToFahrenheit == true {
            return String((value - 273.15) * 1.8 + 32 )
        } else if convertToKelvin == true {
            return String(value)
        }
    }
   
    return "impossible"
}

//Input
print("Temperature Converter")
print("=====================")
print("")
print("Which one do you want to convert from? ")
print("")
print("1 - Celsius")
print("2 - Fahrenheit")
print("3 - Kelvin")
print("")
print("Q - Quit program")
print("")

// Asking the users what temperature system they want to convert from.
let from = String.collectInput(withPrompt: "Please enter the system you want to convert from (1/2/3/Q): ", acceptableValues: ["1", "2", "3", "Q"])

// Asking the users what value they want to convert.
let value = Double.collectInput(withPrompt: "Please enter the degrees you want to convert: ", minimum: nil, maximum: nil)

// Asking the users what temperature system they want to convert to.
let to = String.collectInput(withPrompt: "Please enter the system you want to convert to (1/2/3/Q): ", acceptableValues: ["1", "2", "3", "Q"])

//Process


let result = temperatureConverter(from: from, to: to, value: value)
print("The result is \(result) degrees.")

