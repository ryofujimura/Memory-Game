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
    
    @Published var gameEnded = false
    @Published private(set) var moveCount = 0

    init() {
        model = MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            Self.emojis[pairIndex]
        }
    }

    var cards: [Card] {
        model.cards
    }
    
    private func checkIfGameEnded() {
        if model.cards.allSatisfy({ $0.isMatched }) {
            gameEnded = true
        }
    }

    func choose(_ card: Card) {
        if !gameEnded {
            model.choose(card)
            moveCount += 1
            checkIfGameEnded()
        }    }

    func newGame(withPairs pairs: Int) {
        gameEnded = false
        moveCount = 0
        model = MemoryGame<String>(numberOfPairsOfCards: pairs) { pairIndex in
            Self.emojis[pairIndex]
        }
    }
}
