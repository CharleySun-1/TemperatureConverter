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
            return String(value * 100)
        } else if convertToKilometre {
            return String(value * 100000)
        } else if convertToMile {
            return String(value * 160934)
        } else if convertToInch {
            return String(value * 2.54)
        } else if convertToFoot {
            return String(value * 30.48)
        } else if convertToYard {
            return String(value * 91.44)
        }
    }
    
    if isMetre {
        if convertToCentimetre == true {
            return String(value / 100)
        } else if  convertToMetre == true {
            return String(value)
        } else if convertToKilometre {
            return String(value * 1000)
        } else if convertToMile {
            return String(value / 1609)
        } else if convertToInch {
            return String(value * 39.3701)
        } else if convertToFoot {
            return String(value * 3.28084)
        } else if convertToYard {
            return String(value * 1.094)
        }
    }
    
     if isKilometre {
        if convertToCentimetre == true {
            return String(value / 100000)
        } else if  convertToMetre == true {
            return String(value / 1000)
        } else if convertToKilometre {
            return String(value)
        } else if convertToMile {
            return String(value / 1.609)
        } else if convertToInch {
            return String(value * 39370)
        } else if convertToFoot {
            return String(value * 3281)
        } else if convertToYard {
            return String(value * 1094)
        }
    }
   
    if isMile {
       if convertToCentimetre == true {
           return String(value * 160934)
       } else if  convertToMetre == true {
           return String(value * 1609)
       } else if convertToKilometre {
           return String(value * 1.609)
       } else if convertToMile {
           return String(value)
       } else if convertToInch {
           return String(value * 63360)
       } else if convertToFoot {
           return String(value * 5280)
       } else if convertToYard {
           return String(value * 1760)
       }
   }
   
    if isInch {
       if convertToCentimetre == true {
           return String(value * 2.54)
       } else if  convertToMetre == true {
           return String(value / 39.37)
       } else if convertToKilometre {
           return String(value / 39370)
       } else if convertToMile {
           return String(value / 63360)
       } else if convertToInch {
           return String(value)
       } else if convertToFoot {
           return String(value / 12)
       } else if convertToYard {
           return String(value / 36)
       }
   }
    
    if isFoot {
       if convertToCentimetre == true {
           return String(value * 30.48)
       } else if  convertToMetre == true {
           return String(value / 3.281)
       } else if convertToKilometre {
           return String(value / 3281)
       } else if convertToMile {
           return String(value / 5280)
       } else if convertToInch {
           return String(value * 12)
       } else if convertToFoot {
           return String(value)
       } else if convertToYard {
           return String(value / 3)
       }
   }
    
    if isYard {
       if convertToCentimetre == true {
           return String(value * 91.44)
       } else if  convertToMetre == true {
           return String(value / 1.094)
       } else if convertToKilometre {
           return String(value / 1094)
       } else if convertToMile {
           return String(value / 1760)
       } else if convertToInch {
           return String(value * 36)
       } else if convertToFoot {
           return String(value * 3)
       } else if convertToYard {
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


