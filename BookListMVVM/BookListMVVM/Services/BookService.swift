//
//  BookService.swift
//  BookListMVVM
//
//  Created by Khanh Nguyen on 22/04/2021.
//

import Foundation

protocol BookService {
  // Book List
  func bookList() -> [Book]
  
  // Book Detail
  func bookDetails(bookId: Int) -> BookDetail
  func numberOfCartItems() -> Int
  func addToCart(bookId: Int)
  
  // Cart
  func cartItems() -> Cart
  func checkout()
}
