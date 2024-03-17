//
//  memoryGame.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI


struct ContentViewone: View {
    // Game settings
    @State private var numberOfPairs = 3
    @State private var cards: [Card] = []
    @State private var flippedCards: [Int] = []
    
    var body: some View {
        VStack {
            // New Game and Number of Pairs Selection
            HStack {
                Button("New Game") {
                    startNewGame()
                }
                Spacer()
                Picker("Pairs", selection: $numberOfPairs) {
                    Text("3").tag(3)
                    Text("6").tag(6)
                    Text("9").tag(9)
                }
                .pickerStyle(SegmentedPickerStyle())
                .onChange(of: numberOfPairs) {
                        startNewGame()
                }
            }
            .padding()
            
            // Card Grid
            Grid(cards) { card in
                CardViewone(card: card)
                    .onTapGesture {
                        flipCard(card)
                    }
            }
            .padding()
        }
        .onAppear {
            startNewGame()
        }
    }
    
    func startNewGame() {
        cards = Array(0..<(numberOfPairs * 2)).map { _ in Card() }
        // Randomize cards here based on your logic
        flippedCards = []
    }
    
    func flipCard(_ card: Card) {
        guard let index = cards.firstIndex(where: { $0.id == card.id }) else { return }
        cards[index].isFlipped.toggle() // This flips the card
    }
}

// Card View
struct CardViewone: View {
    var card: Card
    var body: some View {
        ZStack {
            if card.isFlipped {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 60, height: 90)
                    .overlay(Text(card.content).foregroundColor(.black))
            } else {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 60, height: 90)
            }
        }
        .cornerRadius(10)
        .animation(.default, value: card.isFlipped) // Add simple flip animation
    }
}

// Card Model
struct Card: Identifiable {
    var id = UUID()
    var isFlipped = false
    var isMatched = false
    var content = "?" // Placeholder for card content
}

// Grid View - Simplified version for layout purposes
struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    private var items: [Item]
    private var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        // Implement your grid layout here
        // For simplicity, using a basic vertical stack
        LazyVGrid (columns: columns, spacing: 5){
            ForEach(items) { item in
                viewForItem(item)
            }
        }
    }
}


#Preview {
    ContentViewone()
}

