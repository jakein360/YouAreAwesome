//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jake Emitte on 6/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "This is Cool!"
    var body: some View {
        
        VStack {
            Text("Relentless")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            Text("Effort")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("Have You")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            Text("Built Anything")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            Text("Cool Today?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.mint)
            Button(message) {
                message = "You Clicked Me!"
                
            }
            
                
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
