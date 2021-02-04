//
//  main.swift
//  TemperatureConverter
//
//  Created by Charley Sun on 2021-02-02.
//

import Foundation

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
let from = String.collectInput(withPrompt: "Please enter your selection (1/2/3/Q):  ", acceptableValues: ["1", "2", "3", "Q"])

// Asking the users what value they want to convert.
let value = Double.collectInput(withPrompt: "Please enter the degree you want to convert.", minimum: nil, maximum: nil)

// Asking the users what temperature system they want to convert to.
let to = String.collectInput(withPrompt: "Please enter your selection (1/2/3/Q):  ", acceptableValues: ["1", "2", "3", "Q"])

//Process



print(temperatureConverter(from: from, to: to, value: value))


