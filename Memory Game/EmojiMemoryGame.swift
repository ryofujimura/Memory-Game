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

    @Published private var model: MemoryGame = createMemoryGame()
    private static func createMemoryGame() -> MemoryGame {
        MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: [MemoryGame.Card] {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame.Card) {
        model.choose(card)
    }
}
