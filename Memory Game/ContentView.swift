//
//  ContentView.swift
//  Memory Game
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

// Define the ContentView structure, which conforms to the View protocol
struct ContentView: View {
    var body: some View {
        // Vertical stack (VStack) to arrange views vertically
        VStack {
            // Image view with the system's globe icon
            Image(systemName: "globe")
                .imageScale(.large)  // Set the image scale to large
                .foregroundStyle(.tint)  // Set the image color to the tint color

            // Text view displaying the "Hello, world!" string
            Text("Hello, world!")
        }
        .padding()  // Apply padding to the entire VStack
    }
}

// Preview the ContentView in the canvas
#Preview {
    ContentView()
}
