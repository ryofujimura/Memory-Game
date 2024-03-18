//
//  removeButton.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct RemoveButton: View {
    @State private var numberOfPairs = 9
    
    var body: some View {
        Button(action: {
            // reset cards to random and face down
            let currentNumberOfPairs = numberOfPairs
            numberOfPairs = 0
            numberOfPairs = currentNumberOfPairs
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
    RemoveButton()
}
