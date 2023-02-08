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
      Button("Tap count: \(tapCount)") {
        tapCount += 1
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
