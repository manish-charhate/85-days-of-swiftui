//
//  ContentView.swift
//  WeSplit
//
//  Created by Manish Charhate on 24/08/22.
//

import SwiftUI

struct ContentView: View {
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
            Text("Hello, world!")
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
