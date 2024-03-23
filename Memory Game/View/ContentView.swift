//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct ContentView: View {
    private var emojiMemoryGame = EmojiMemoryGame()
//    private var numOfPairs = PairButton()
//    @State private var memoryGame = EmojiMemoryGame()
    @State public var pairs = 6
    
    var body: some View {
        VStack{
            VStack{
                Text("Memory Game")
                    .font(.title)
                    .bold()
                HStack{
                    NewGameButtonView(numberOfPairs: pairs)
                    PairsButtonView()
                }
            }
            .padding()
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.gray)
                    .shadow(radius: 10)
                    .opacity(0.2)
                ScrollView{
                    MemoryGameView(memoryGame: emojiMemoryGame)
                        .padding()
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
