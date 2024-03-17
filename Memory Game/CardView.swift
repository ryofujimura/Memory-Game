//
//  CardView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct Front{
    let emoji: String
}

struct CardView: View {
    let card: Front
    @State public var numberOfPairs = 9
    @State private var isShowingEmoji = true

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(!self.isShowingEmoji ? Color.blue.gradient : Color.white.gradient)
                .strokeBorder(!self.isShowingEmoji ? Color.white.opacity(0.8) : Color.blue.opacity(0.8), lineWidth: 6)
            
            Text(self.isShowingEmoji ? card.emoji : " ")
                .font(.title)
        }
        .aspectRatio(1, contentMode: .fit)
        .rotation3DEffect(.degrees(self.isShowingEmoji ? 0 : 180), axis: (x: 0, y: 1, z: 0))
        .onTapGesture {
            withAnimation(.linear(duration: 0.2)){
                print("tapped" + card.emoji )
                self.isShowingEmoji.toggle()
            }
        }
        .shadow(color: .black.opacity(0.1), radius: 4, x: -2, y: 2)
    }
}

#Preview {
    CardView(card: Front(emoji: "🦬"))
}
