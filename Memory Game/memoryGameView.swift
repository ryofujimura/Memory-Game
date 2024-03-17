//
//  memoryGameView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI


struct memoryGameView: View {
    @State private var emoji = ["😎", "🐠", "👞", "👼", "🥷", "👮‍♂️", "🦺", "🦷", "🍄"]
    
    var body: some View {
        let chosenEmoji = emoji.shuffled().prefix(pairsButton().numberOfPairs)
        VStack{
            ForEach(chosenEmoji, id: \.self) { emoji in
                CardView(card: Card(emoji: emoji))
            }
        }
        
    }
}

#Preview {
    memoryGameView()
}
