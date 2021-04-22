//
//  Cart.swift
//  BookListMVVM
//
//  Created by Khanh Nguyen on 22/04/2021.
//

import Foundation

struct Item: Identifiable {
  var id: String
  var item: Book
  var units: Int
}

struct Cart {
  var items: [Item]
  var numberOfItems: Int
  var total: Double
