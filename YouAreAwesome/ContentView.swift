//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jake Emitte on 6/22/25.
//

import SwiftUI

struct ContentView: View {
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
                .padding(.vertical, 50)
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
                
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
