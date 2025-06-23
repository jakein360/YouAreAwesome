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
            
            Spacer()
            
            
            Button("Show Message!") {
                let message1 = "You are awesome!"
                let message2 = "You are Great!"
                message = (message == message1 ? message2 : message1)
                imageNumber += 1
                print(imageNumber)
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
