//
//  CardView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct CardView<CardContent: Equatable>: View {
    let card: MemoryGame<CardContent>.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if card.isFaceUp {
                shape.fill().foregroundColor(.blue)
                shape.strokeBorder(lineWidth: 6).foregroundColor(.white.opacity(0.8))
                Text(card.content as? String ?? "").font(.title)
            } else if card.isMatched {
                shape.opacity(0)
//                Text("☑️").font(.title)
            } else {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 6).foregroundColor(.blue.opacity(0.8))
                Text("👾").font(.title)

            }
        }
        .shadow(color: .black.opacity(0.1), radius: 4, x: -2, y: 2)
        .aspectRatio(4/5, contentMode: .fit)
    }
}

#Preview {
    ForEach(EmojiMemoryGame().cards) { card in
        CardView(card: card).onTapGesture {
            EmojiMemoryGame().choose(card)
        }
    }
}
