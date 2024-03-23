//
//  EmojiMemoryGame.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/18/24.
//

import Foundation
import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["😎", "🐠", "👞", "👼", "🥷", "👮‍♂️", "🦺", "🦷", "🍄"]
    @Published var model: MemoryGame = createMemoryGame()

    private static func createMemoryGame() -> MemoryGame {
        MemoryGame(numberOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: [MemoryGame.Card] {
        model.cards
    }
    
    func choose(_ card: MemoryGame.Card) {
        model.choose(card)
    }
}
