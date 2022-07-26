//
//  MenuSection.swift
//  CoolBeans
//
//  Created by Conrad Taylor on 7/20/22.
//

import Foundation

struct MenuSection: Identifiable, Codable {
  let id: UUID
  let name: String
  let drinks: [Drink]
}
