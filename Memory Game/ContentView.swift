//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

// Define the ContentView structure, which conforms to the View protocol
struct ContentView: View {
//    @State private var numberOfPairs = 9
    @State private var emoji = ["😎", "🐠", "👞", "👼", "🥷", "👮‍♂️", "🦺", "🦷", "🍄"]
//    @State private var isShowingEmoji = true
    @State private var chosenEmojis = [""]

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
                ScrollView{
                    let columns = [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]
//                    MemoryGameView()
//
//                    LazyVGrid(columns: columns, spacing: 5) {
//                        ForEach(chosenEmojis, id: \.self) { emoji in
//                            CardView(card: Front(emoji: emoji))
//                        }
//                        .animation(.interactiveSpring(duration: 0.5), value: emoji)
//                    }
//                    .padding()
                }
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
