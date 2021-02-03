//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Charley Sun on 2021-02-03.
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




