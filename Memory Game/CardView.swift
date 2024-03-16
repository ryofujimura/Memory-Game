//
//  CardView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct Card{
    let emoji: String

    static let mockedEmojis = [
        Card(emoji: "😎"),
        Card(emoji: "🐠"),
        Card(emoji: "👞"),
        Card(emoji: "👼"),
        Card(emoji: "🥷"),
        Card(emoji: "👮‍♂️"),
        Card(emoji: "🦺"),
        Card(emoji: "🦷"),
        Card(emoji: "🤖")
    ]
}

struct CardView: View {
    let card: Card
    
    @State private var isShowingEmoji = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isShowingEmoji == true ? .red : .blue)
        }
    }
}

#Preview {
    CardView(card: Card(emoji: "🦬"))
}
