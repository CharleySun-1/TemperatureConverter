//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Charley Sun on 2021-02-03.
//

import Foundation


/// Converts a value in a permited DataStorageUnit to an equivalent value in bits.
/// - Parameters:
///   - from: What data storage unit the provided value is in.
///   - value: The value to convert to bits.
/// - Returns: The provided value in bits.
func convertToCelsius(from: TemperatureUnit, value: Double) -> Double {
    
    switch from {
    case .celsius:
        return value
    case .fahrenheit:
        return (value - 32) / 1.8
    case .kelvin:
        return value - 273.15
    }
    
}

/// Converts a given value in bits to an equivalent value in one of the allowed DataStorageUnit.
/// - Parameters:
///   - to: What data storage unit the value in bits should be converted to.
///   - value: The value to be converted.
/// - Returns: The provided value in the desired data storage unit.
func convertFromCelsius(to: TemperatureUnit, value: Double) -> Double {
    
    switch to {
    case .celsius:
        return (value)
    case .fahrenheit:
        return (value * 1.8 + 32)
    case .kelvin:
        return (value + 273.15)
  
    }
    
}


/// Generates a user-friendly sentence summarizing conversion results, with correct pluralization.
/// - Parameters:
///   - providedValue: The value converted.
///   - finalValue: The converted value.
///   - fromUnit: The unit of the value that was converted.
///   - toUnit: The unit that the value was converted to.
/// - Returns: A sentence summarizing the conversion.
func getTemperatureConversionResult(providedValue: Double,
                                    finalValue: Double,
                                    fromUnit: TemperatureUnit,
                                    toUnit: TemperatureUnit) -> String {

    // Start building the result
    var result = ""
    
    // Handle pluralization
    if providedValue == 1 && finalValue == 1 {
        
        result += """
                \(providedValue) \(fromUnit.rawValue) is equal to \(finalValue) \(toUnit.rawValue)
                """
                
    } else if providedValue == 1 {
        
        result += """
                \(providedValue) \(fromUnit.rawValue) is equal to \(finalValue) \(toUnit.rawValue)s
                """

    } else if finalValue == 1 {
        
        result += """
                \(providedValue) \(fromUnit.rawValue)s is equal to \(finalValue) \(toUnit.rawValue)
                """

    } else {
        
        result += """
                \(providedValue) \(fromUnit.rawValue)s is equal to \(finalValue) \(toUnit.rawValue)
                """
    }
   
    // Finish the sentence
    result += "."
    
    // Return complete result
    return result

    }


/// Given a value in one data storage unit, returns a summary of the equivalent in another data unit.
/// - Parameters:
///   - providedValue: The value to convert.
///   - fromUnit: What data storage unit the provided value is in.
///   - toUnit: What data storage unit the value should be converted to.
/// - Returns: A written summary of the equivalent value in the desired data storage unit.
func convert(providedValue: Double, fromUnit: TemperatureUnit, toUnit: TemperatureUnit) -> String {
    
    // Convert the provided value to an equivalent value in bits
    let interimValue = convertToCelsius(from: fromUnit, value: providedValue)
    
    // Convert to the desired destination unit
    let finalValue = convertFromCelsius(to: toUnit, value: interimValue)

    // Get result
    let result = getTemperatureConversionResult(providedValue: providedValue,
                                                finalValue: finalValue,
                                                fromUnit: fromUnit,
                                                toUnit: toUnit)

    // Return the result
    return result
    
}
