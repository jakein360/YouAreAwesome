//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jake Emitte on 6/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = ""
    @State private var message = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .padding(20)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            
            Spacer()
            
            
            Button("Press Me!") {
                let message1 = "You are awesome!"
                let message2 = "You are Great!"
                let imageOne = "sun.max.fill"
                let imageTwo = "hand.thumbsup"
                
                imageName = (imageName == imageOne ? imageTwo : imageOne)
                message = (message == message1 ? message2 : message1)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        
    }
}

#Preview {
    ContentView()
}
