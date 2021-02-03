//
//  main.swift
//  TemperatureConverter
//
//  Created by Charley Sun on 2021-02-02.
//

import Foundation

// Functions
/// Converts celsius to fahrenheit
/// - Parameter celsius: the most used temperature system
/// - Returns: the formula
func celsiusToFahrenheit(celsius: Double) -> Double {
    
    return celsius * 1.8 + 32
    
}
/// Converts fahrenheit to celsius
/// - Parameter fahrenheit: a less used temperature system
/// - Returns: the formula
func fahrenheitToCelsius(fahrenheit: Double) -> Double {
    
    return (fahrenheit - 30) / 2
    
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
let from = String.collectInput(withPrompt: "Please enter your selection (1/2/Q):  ", acceptableValues: ["1", "2", "3", "Q"])

let value = Double.collectInput(withPrompt: "Please enter the degree you want to convert.", minimum: nil, maximum: nil)

let to = String.collectInput(withPrompt: "Please enter your selection (1/2/Q):  ", acceptableValues: ["1", "2", "3", "Q"])
//Process






