//
//  NavagationLazyView.swift
//  BookListMVVM
//
//  Created by Khanh Nguyen on 22/04/2021.
//

import SwiftUI

struct NavagationLazyView<Content: View>: View {
  let build: () -> Content
  
  init(_ build: @autoclosure @escaping () -> Content) {
    self.build = build
  }
  
  var body: Content {
    build()
  }
}
