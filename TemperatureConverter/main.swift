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
print("Which one do you want to convert? ")
print("")
print("1 - Celsius to Fahrenheit")
print("2 - Fahrenheit to Celsius")
print("")
print("Q - Quit program")
print("")
let type = String.collectInput(withPrompt: "Please enter your selection (1/2/Q):  ", acceptableValues: ["1", "2", "Q"])

//Process
switch type {
case "1":
       
    // Input
        print("You selected Celsius to Fahrenheit.")
        print("")
    let givenCelsius = Double.collectInput(withPrompt: "Please enter the temperature you want to convert: ", minimum: 0, maximum: nil)
       
    // Process
    let result = celsiusToFahrenheit(celsius: givenCelsius)
   
    // Output
        print("It is \(result) Fahrenheit.")

case "2":
   
    // Input
        print("You selected Fahrenheit to Celsius.")
        print("")
    let givenFahrenheit = Double.collectInput(withPrompt: "Please enter the temperature you want to convert: ", minimum: 0, maximum: nil)
       
    // Process
    let result = fahrenheitToCelsius(fahrenheit: givenFahrenheit)
   
    // Output
        print("It is \(result) Celsius.")

case "Q":
    exit(0)

default:
    print("Please enter a valid option.")
    
    
    
}






