//
//  BookImage.swift
//  BookListMVVM
//
//  Created by Khanh Nguyen on 22/04/2021.
//

import SwiftUI

struct BookImage: View {
  let image: Image
  
  var body: some View {
    image
      .resizable()
      .frame(width: 70, height: 110)
      .aspectRatio(contentMode: .fit)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .shadow(color: .gray, radius: 10, x: 5, y: 5)
      .padding()
  }
}
