//
//  BookDetail.swift
//  BookListMVVM
//
//  Created by Khanh Nguyen on 22/04/2021.
//

import Foundation
import SwiftUI

struct BookDetail {
  var id: String
  var bookId: Int
  var author: String
  var title: String
  var price: Double
  var genre: [Genre]
  var kind: String
  var description: String
  var imageName: String
  var isAvailable: Bool
}