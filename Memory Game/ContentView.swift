//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct ContentView: View {
//    @State private var numberOfPairs = 9
//    @State private var emoji = ["😎", "🐠", "👞", "👼", "🥷", "👮‍♂️", "🦺", "🦷", "🍄"]
//    @State private var isShowingEmoji = true
    @State private var chosenEmojis = [""]
    private var emojiMemoryGame = EmojiMemoryGame()


    var body: some View {
        
        VStack{
            VStack{
                Text("Memory Game")
                    .font(.title)
                    .bold()
                HStack{
                    RemoveButton()
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
                    MemoryGameView(viewModel: emojiMemoryGame)
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
