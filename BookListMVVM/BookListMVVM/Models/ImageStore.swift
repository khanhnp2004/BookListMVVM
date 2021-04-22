//
//  ImageStore.swift
//  BookListMVVM
//
//  Created by Khanh Nguyen on 22/04/2021.
//

import Foundation
import SwiftUI

final class ImageStore {
  typealias ImageDictionary = [String: CGImage]
  fileprivate var images: ImageDictionary = [:]
  
  fileprivate static var scale = 2
  
  static var shared = ImageStore()
  
  static func loadImage(name: String) -> CGImage {
    guard let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
          let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
          let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil) else {
      fatalError("Could not load image \(name).jpg from main bundle.")
    }
    return image
  }
  
  func image(name: String) -> Image {
    let index = guaranteeImage(name: name)
    return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(name))
  }
  
  fileprivate func guaranteeImage(name: String) -> ImageDictionary.Index {
    if let index = images.index(forKey: name) {
      return index
    }
    images[name] = ImageStore.loadImage(name: name)
    return images.index(forKey: name)!
  }
}
