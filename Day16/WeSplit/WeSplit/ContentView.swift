//
//  ContentView.swift
//  WeSplit
//
//  Created by Manish Charhate on 24/08/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var tapCount = 0

  var body: some View {
    NavigationView {
      Form {
        Group {
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
        }
        Group {
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Text("Hello, world!")
          Section {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Button("Tap Count: \(tapCount)") {
              tapCount += 1
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
