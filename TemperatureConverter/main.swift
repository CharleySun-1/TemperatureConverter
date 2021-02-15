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

//Input
print ("""
Temperature Converter
=====================

Which one do you want to convert from?

1 - Celsius
2 - Fahrenheit
3 - Kelvin

Q - Quit program

""")

// Asking the users what temperature system they want to convert from.
let fromUnit = String.collectInput(withPrompt: "Please enter the system you want to convert from (1/2/3/Q): ", acceptableValues: ["1", "2", "3", "Q"])

// Asking the users what value they want to convert.
let input = Double.collectInput(withPrompt: "Please enter the degrees you want to convert: ", minimum: nil, maximum: nil)

// Asking the users what temperature system they want to convert to.
let toUnit = String.collectInput(withPrompt: "Please enter the system you want to convert to (1/2/3/Q): ", acceptableValues: ["1", "2", "3", "Q"])

//Process


let result = temperatureConverter(from: from, to: to, value: value)
print("The result is \(result) degrees.")

