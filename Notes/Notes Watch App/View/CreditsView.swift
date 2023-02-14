//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Petr Yanenko on 14.02.2023.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: PROPERTIES
    
    @State private var randomNumber =  Int.random(in: 1..<4)
    
    private var randomImage:String {
        return "developer-no\(randomNumber)"
    }
    // MARK: BODY
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
        
            // CONTENT
            Text("Yanenko Petr")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("IOS Devepoler")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }//: VStack
    }
}

// MARK: PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
