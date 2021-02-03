//
//  main.swift
//  TemperatureConverter
//
//  Created by Charley Sun on 2021-02-02.
//

import Foundation

// Functions
func celsiusToFahrenheit(celsius: Double) -> Double {
    
    return celsius * 1.8 + 32
    
}
func fahrenheitToCelsius(fahrenheit: Double) -> Double {
    
    return (fahrenheit - 30) / 2
    
}


//Input
print("Temperature Converter")
print("=====================")
print("")
print("Which one do you want to convert.?")
print("")
print("1 - Celsius to fahrenheit")
print("2 - Fahrenheit to celsius")
print("")
print("Q - Quit program")
print("")
let type = String.collectInput(withPrompt: "Please enter your selection (1/2/Q):  ", acceptableValues: ["1", "2", "Q"])

//Process
switch type {
case "1":
       
    // Input
        print("You selected celsius to fahrenheit.")
        print("")
    let givenCelsius = Double.collectInput(withPrompt: "Please enter the temperature you want to convert: ", minimum: 0, maximum: nil)
       
    // Process
    let result = celsiusToFahrenheit(celsius: givenCelsius)
   
    // Output
        print("It is \(result) fahrenheit.")

case "2":
   
    // Input
        print("You selected fahrenheit to celsius.")
        print("")
    let givenFahrenheit = Double.collectInput(withPrompt: "Please enter the temperature you want to convert: ", minimum: 0, maximum: nil)
       
    // Process
    let result = fahrenheitToCelsius(fahrenheit: givenFahrenheit)
   
    // Output
        print("It is \(result) celsius.")
    
default:
    print("Please enter a valid option.")
    
    
    
}






