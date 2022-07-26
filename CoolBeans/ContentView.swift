//
//  ContentView.swift
//  CoolBeans
//
//  Created by Conrad Taylor on 7/20/22.
//

import SwiftUI

struct ContentView: View {
  @StateObject var menu = Menu()
  
  var body: some View {
    MenuView()
      .environmentObject(menu)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
