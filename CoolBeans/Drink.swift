//
//  Drink.swift
//  CoolBeans
//
//  Created by Conrad Taylor on 7/20/22.
//

import Foundation

struct Drink: Identifiable, Codable {
  let id: UUID
  let name: String
  
  static let example = Drink(id: UUID(), name: "Example Drink")
}
