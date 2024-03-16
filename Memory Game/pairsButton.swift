//
//  pairsButton.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

struct pairsButton: View {
    var body: some View {
        Button(action: {
//            lets user select 3, 6, or 9
            
        }){
            Text("Pairs")
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
    pairsButton()
}
