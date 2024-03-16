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
    
    @State private var isShowingEmoji = true
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(!isShowingEmoji ? Color.blue.gradient : Color.white.gradient)
            Text(isShowingEmoji ? card.emoji : "")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 100, height: 100)
        .rotation3DEffect(.degrees(isShowingEmoji ? 180 : 0), axis: (x: 0, y: 1, z: 0))
        .onTapGesture {
            withAnimation(.linear(duration: 0.2)){
                isShowingEmoji.toggle()
            }
        }
        .shadow(color: .black.opacity(0.4), radius: 4, x: -2, y: 2)
    }
}

#Preview {
    CardView(card: Card(emoji: "🦬"))
}
