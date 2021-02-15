//
//  ContentView.swift
//  TemperatureConverterApp
//
//  Created by Charley Sun on 2021-02-15.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State private var input: String = ""
    
    //Mark: Computed properties
    private var output: String {
        return "You typed in \(input)"
    }
    
    var body: some View {
        Form {
            TextField("e.g.: 50", text: $input)
                .keyboardType(.numberPad)
            
            Text(output)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
