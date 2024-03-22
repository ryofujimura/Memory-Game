//
//  pairsButton.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct PairsButtonView: View {
    @StateObject var pairButton = PairButton()
    var body: some View {
        Menu{
            Button("3 Pairs") {
                pairButton.numberOfPairs = 3
                print(pairButton.numberOfPairs)
            }
            Button("6 Pairs") {
                pairButton.numberOfPairs = 6
                print(pairButton.numberOfPairs)
            }
            Button("9 Pairs") {
                pairButton.numberOfPairs = 9
                print(pairButton.numberOfPairs)
            }
        } label: {
            Text(String(pairButton.numberOfPairs) + " Pairs")
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
    PairsButtonView()
}
 
