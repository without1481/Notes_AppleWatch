//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Petr Yanenko on 14.02.2023.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: PROPERTIES
    @AppStorage("lineCount") var lineCount:Int = 1
    @State private var value:Float = 1.0
    
    // MARK: FUNCTION
    func update() {
        lineCount = Int(value)
    }

    // MARK: BODY
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER

            Slider(value: Binding(get: {
                self.value
            }, set: { (newValue) in
                self.value = newValue
                update()
            }), in: 1...4, step: 1)
                .foregroundColor(.accentColor)
        }//: VSTACK
        .onAppear{
            value = Float(lineCount)
        }
    }
}

// MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
