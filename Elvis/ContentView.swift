//
//  ContentView.swift
//  Elvis
//
//  Created by John Eigenbrode on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var symbolName: String = ""
    @State private var message = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: symbolName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
                
            Spacer()
            HStack {
                Button("Peace") {
                    message = "Peace"
                    symbolName = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    symbolName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    symbolName = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
