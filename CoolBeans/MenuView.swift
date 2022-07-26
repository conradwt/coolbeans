//
//  MenuView.swift
//  CoolBeans
//
//  Created by Conrad Taylor on 7/20/22.
//

import SwiftUI

struct MenuView: View {
  @EnvironmentObject var menu: Menu
  
  let columns = [
    GridItem(.adaptive(minimum: 150))
  ]
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(menu.sections) { section in
            Section {
              ForEach(section.drinks) { drink in
                VStack {
                  Text(drink.name)
                    .font(.system(.body, design: .serif))
                }
                .padding()
              }
            } header: {
              Text(section.name)
                .font(.system(.title, design: .serif))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .bottom, .trailing], 5)
                .background(.background)
            }
          }
        }
        .padding(.horizontal)
      }
      .navigationTitle("Add Drink")
    }
  }
}

struct MenuView_Previews: PreviewProvider {
  static var previews: some View {
    MenuView()
      .environmentObject(Menu())
  }
}
