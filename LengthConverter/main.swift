//
//  main.swift
//  LengthConverter
//
//  Created by Charley Sun on 2021-02-03.
//

import Foundation

// MARK: Functions
/// The function that does everything
/// - Parameters:
///   - from: The input length unit
///   - to: The output length unit
///   - value: The length the user wants to convert.
/// - Returns: Result
func temperatureConverter(from: String, to: String, value: Double) -> String {
    
    var isCentimetre = false
    var isMetre = false
    var isKilometre = false
    var isMile = false
    var isInch = false
    var isFoot = false
    var isYard = false
    var convertToCentimetre = false
    var convertToMetre = false
    var convertToKilometre = false
    var convertToMile = false
    var convertToInch = false
    var convertToFoot = false
    var convertToYard = false
    
    switch from {
    case "1":
        isCentimetre = true
    case "2":
        isMetre = true
    case "3":
        isKilometre = true
    case "4":
        isMile = true
    case "5":
        isInch = true
    case "6":
        isFoot = true
    case "7":
        isYard = true
    case "Q":
        exit(0)
    default:
        break
    }
    
    switch to {
    case "1":
        convertToCentimetre = true
    case "2":
        convertToMetre = true
    case "3":
        convertToKilometre = true
    case "4":
        convertToMile = true
    case "5":
        convertToInch = true
    case "6":
        convertToFoot = true
    case "7":
        convertToYard = true
    case "Q":
        exit(0)
    default:
        break
    }
    
    if isCentimetre {
        if convertToCentimetre == true {
            return String(value)
        } else if  convertToMetre == true {
            return String(value / 100)
        } else if convertToKilometre {
            return String(value / 100000)
        } else if convertToMile {
            return String(value / 160934)
        } else if convertToInch {
            return String(value / 2.54)
        } else if convertToFoot {
            return String(value / 30.48)
        } else if convertToYard {
            return String(value / 91.44)
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

// MARK: Prompt.
print ("""
Length Converter
=====================

Which type of length unit do you want to convert from?

1 - Centimetre
2 - Metre
3 - Kilometre
4 - Mile
5 - Inch
6 - Foot
7 - Yard


Q - Quit program

""")


// MARK: Input
// Asking the users what temperature system they want to convert from.
let from = String.collectInput(withPrompt: "Please enter the unit you want to convert from (1/2/3/4/5/6/7/Q): ", acceptableValues: ["1", "2", "3", "4", "5", "6", "7", "Q"])

// Asking the users what value they want to convert.
let value = Double.collectInput(withPrompt: "Please enter the length you want to convert: ", minimum: 0, maximum: nil)

// Asking the users what temperature system they want to convert to.
let to = String.collectInput(withPrompt: "Please enter the unit you want to convert to (1/2/3/4/5/6/7/Q): ", acceptableValues: ["1", "2", "3", "4", "5", "6", "7", "Q"])


