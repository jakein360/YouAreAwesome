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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 20)
                .padding(20)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            
            Button("Show Message!") {
               
                var messages = ["You are Awesome!",
                                "You are Great!",
                                "You are Amazing!",
                                "You are Incredible!"]
                
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
       
                
                imageNumber += 1
                if imageNumber >= 9 {
                    imageNumber = 0
                }
                imageName = "image\(imageNumber)"
                
                
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
