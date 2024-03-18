//
//  pairsButton.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct PairsButton: View {
    @State public var numberOfPairs = 9
    var body: some View {
        Menu{
            Button("3 Pairs") {
                numberOfPairs = 3
                print(numberOfPairs)
            }
            Button("6 Pairs") {
                numberOfPairs = 6
                print(numberOfPairs)
            }
            Button("9 Pairs") {
                numberOfPairs = 9
                print(numberOfPairs)
            }
        } label: {
            Label("Pairs", systemImage: "number")
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
    PairsButton()
}
 
