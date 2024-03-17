//
//  removeButton.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct removeButton: View {
    @State public var resetPressed = false
    var body: some View {
        Button(action: {
            // reset cards to random and face down
            resetPressed.toggle()
            print("reset game")
        }) {
            Text("New Game")
                .foregroundColor(.black)
                .font(.title2)
                .bold()
                .padding()
                .padding(.horizontal, 10)
                .background(.gray.opacity(0.2).gradient)
                .cornerRadius(25.0)
        }
    }
}

#Preview {
    removeButton()
}
