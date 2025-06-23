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
        
            HStack {
                Button("Press Me!") {
                    if imageName == "" {
                        imageName = "sun.max.fill"
                        message = "You are awesome!"
                    }else if imageName == "sun.max.fill" {
                        imageName = "hand.thumbsup"
                        message = "You are Great!"
                    } else if imageName == "hand.thumbsup"{
                        imageName = "sun.max.fill"
                        message = "You are awesome!"
                    }
                  
                }
                
              
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
