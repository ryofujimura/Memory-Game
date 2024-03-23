//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var emojiMemoryGame = EmojiMemoryGame()
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
                    Button(action: {
                        print("1.1", pairs)
                        let currentNumberOfPairs = pairs
                        print("2.1", currentNumberOfPairs)
                        pairs = 0
                        print("1.2", pairs)
                        pairs = currentNumberOfPairs
                        print("1.3", pairs)
                        print("2.3", currentNumberOfPairs)
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
                    Menu{
                        Button("3 Pairs") {
                            pairs  = 3
                            print(pairs )
                        }
                        Button("6 Pairs") {
                            pairs  = 6
                            print( pairs )
                        }
                        Button("9 Pairs") {
                            pairs  = 9
                            print(pairs )
                        }
                    } label: {
                        Text(String(pairs ) + " Pairs")
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                            .padding()
                            .padding(.horizontal, 10)
                            .background(.gray.opacity(0.2).gradient)
                            .cornerRadius(25.0)
                    }
                }
            }
            .padding()
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color.gray)
                    .shadow(radius: 10)
                    .opacity(0.2)
                ScrollView{
                    let columns = [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(emojiMemoryGame.cards) { card in
                            CardView(card: card).onTapGesture {
                                emojiMemoryGame.choose(card)
                            }
                        }
                    }
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
