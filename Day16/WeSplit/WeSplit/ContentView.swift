//
//  ContentView.swift
//  WeSplit
//
//  Created by Manish Charhate on 24/08/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var tapCount = 0
  @State private var name = ""
  
  private let colors = ["Black", "Red", "Blue"]
  @State private var selectedColor = "Red"

  var body: some View {
    NavigationView {
      Form {
        Group {
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
        }
        Group {
          Section("@State example") {
            Button("Tap Count: \(tapCount)") {
              tapCount += 1
            }
          }
          Section("Two way binding example") {
            TextField("Enter your name", text: $name)
            Text("Your name: \(name)")
          }
          Section("Picker with ForEach") {
            Picker("Select Color", selection: $selectedColor) {
              ForEach(colors, id: \.self) {
                Text($0)
              }
            }
          }
        }
      }
      .navigationTitle("SwiftUI Navigation Bar")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
