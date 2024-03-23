//
//  EmojiMemoryGame.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/18/24.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["😎", "🐠", "👞", "👼", "🥷", "👮‍♂️", "🦺", "🦷", "🍄","🍏"]

    @Published private var model: MemoryGame<String>

    init() {
        model = MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            Self.emojis[pairIndex]
        }
    }

    var cards: [Card] {
        model.cards
    }

    func choose(_ card: Card) {
        model.choose(card)
    }

    func newGame(withPairs pairs: Int) {
        model = MemoryGame<String>(numberOfPairsOfCards: pairs) { pairIndex in
            Self.emojis[pairIndex]
        }
    }
}
