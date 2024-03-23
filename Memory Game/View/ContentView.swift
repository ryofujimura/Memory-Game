//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var emojiMemoryGame = EmojiMemoryGame()
    @State private var pairs = 6
    
    var body: some View {
        VStack{
            VStack{
                Text("Memory Game")
                    .font(.title)
                    .bold()
                HStack{
                    Button(action: {
                        emojiMemoryGame.newGame(withPairs: pairs)
                    }) {
                        Text("New Game")
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                            .padding()
                            .padding(.horizontal, 10)
                            .background(.gray.opacity(0.2).gradient)
                            .cornerRadius(25.0)
                    }
                    
                    HStack{
                        Button(action: {
                            if pairs > 2 { pairs -= 1 }
                            emojiMemoryGame.newGame(withPairs: pairs)
                        }) {
                            Text("-")
                        }
                        Text("\(pairs) Pairs")
                        Button(action: {
                            if pairs < 10 { pairs += 1 }
                            emojiMemoryGame.newGame(withPairs: pairs)
                        }) {
                            Text("+")
                        }
                    }
                    .foregroundColor(.black)
                    .font(.title2)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .background(.gray.opacity(0.2).gradient)
                    .cornerRadius(25.0)
                }
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(emojiMemoryGame.cards) { card in
                        CardView(card: card).onTapGesture {
                            emojiMemoryGame.choose(card)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .alert(isPresented: $emojiMemoryGame.gameEnded) {
                    Alert(
                        title: Text("Congratulations!"),
                        message: Text("You completed the game in \(emojiMemoryGame.moveCount/2) moves."),
                        dismissButton: .default(Text("New Game")) {
                            emojiMemoryGame.newGame(withPairs: pairs)
                        }
                    )
                }
    }
}

#Preview {
    ContentView()
}
