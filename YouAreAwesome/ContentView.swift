//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jake Emitte on 6/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    @State private var message1 = "Awesome!"
    @State private var message2 = "Great!"
    
    var body: some View {
        
        VStack {
            
            Spacer()
          
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            
            Spacer()
        
            HStack {
                Button(message1) {
                    message = message1
                }
                Button(message2){
                    message = message2
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
