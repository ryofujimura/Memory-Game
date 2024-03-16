//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

// Define the ContentView structure, which conforms to the View protocol
struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                Text("Memory Game")
                    .font(.title)
                    .bold()
                HStack{
                    removeButton()
                    pairsButton()
                }
            }
            .padding()
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.white)
                    .shadow(radius: 10)
                    .opacity(0.2)
//                memoryGame()
            }
            .padding(.horizontal)
            
        }
        .padding(.horizontal)
    }
}

// Preview the ContentView in the canvas
#Preview {
    ContentView()
}
