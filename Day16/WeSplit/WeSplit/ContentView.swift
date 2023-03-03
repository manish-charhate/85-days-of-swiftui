//
//  ContentView.swift
//  WeSplit
//
//  Created by Manish Charhate on 24/08/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var checkAmount = 0.0
  @State private var numberOfPeople = 0
  @State private var tipPercentage = 20
  
  @FocusState private var isCheckAmountInFocus: Bool
  
  private let currencyFormat: FloatingPointFormatStyle<Double>.Currency = .currency(code: Locale.current.currencyCode ?? "USD")
  
  var totalPerPerson: Double {
    let peopleCount = Double(numberOfPeople + 2)
    return totalCheckAmount / peopleCount
  }
  
  var totalCheckAmount: Double {
    let tipSelection = Double(tipPercentage)

    let tipValue = checkAmount / 100 * tipSelection
    return checkAmount + tipValue
  }

  var body: some View {
    NavigationView {
      Form {
        Section {

          TextField("Amount", value: $checkAmount, format: currencyFormat)
            .keyboardType(.decimalPad)
            .focused($isCheckAmountInFocus)

          Picker("Number of People", selection: $numberOfPeople) {
            ForEach(2..<100) {
              Text("\($0) people")
            }
          }
        }
        Section {

          if #available(iOS 16.0, *) {
            Picker("Tip Percentage", selection: $tipPercentage) {
              ForEach(0..<101, id: \.self) {
                Text($0, format: .percent)
              }
            }
            .pickerStyle(.navigationLink)
          } else {
            Picker("Tip Percentage", selection: $tipPercentage) {
              ForEach(0..<101, id: \.self) {
                Text($0, format: .percent)
              }
            }
          }
        } header: {
          Text("How much tip do you want to leave?")
        }

        Section {
          Text(totalPerPerson, format: currencyFormat)
        } header: {
          Text("Amount per person")
        }
        
        Section {
          Text(totalCheckAmount, format: currencyFormat)
        } header: {
          Text("Total Amount for check")
        }
      }
      .navigationTitle("We Split")
      .toolbar { 
        ToolbarItemGroup(placement: .keyboard) {
          Spacer()

          Button("Done") {
            isCheckAmountInFocus = false
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
