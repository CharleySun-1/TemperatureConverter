//
//  main.swift
//  LengthConverter
//
//  Created by Charley Sun on 2021-02-03.
//

import Foundation


//The users prompt.
print ("""
Length Converter
=====================

Which type of length do you want to convert from?

1 - Centimetre
2 - Metre
3 - Kilometre
4 - Mile
5 - Inch
6 - Foot
7 - Yard


Q - Quit program

""")

// Input
// Asking the users what temperature system they want to convert from.
let from = String.collectInput(withPrompt: "Please enter the system you want to convert from (1/2/3/Q): ", acceptableValues: ["1", "2", "3", "Q"])

// Asking the users what value they want to convert.
let value = Double.collectInput(withPrompt: "Please enter the degrees you want to convert: ", minimum: nil, maximum: nil)

// Asking the users what temperature system they want to convert to.
let to = String.collectInput(withPrompt: "Please enter the system you want to convert to (1/2/3/Q): ", acceptableValues: ["1", "2", "3", "Q"])


