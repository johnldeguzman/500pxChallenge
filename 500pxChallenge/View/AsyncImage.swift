//
//  AsyncImage.swift
//  SquareChallenge
//
//  Created by John De Guzman on 2020-07-07.
//

import Foundation
import SwiftUI

struct AsyncImage<PlaceHolder: View>: View {

    @ObservedObject private var loader: ImageLoader
    private let placeholder: PlaceHolder?
    private let configuration: (SwiftUI.Image) -> SwiftUI.Image
    
    init(url: URL, placeholder: PlaceHolder? = nil, configuration: @escaping (Image) -> Image = { $0 }) {
        loader = ImageLoader(url: url)
        self.placeholder = placeholder
        self.configuration = configuration
    }

    var body: some View {
      image
          .onAppear(perform: loader.load)
    }

    private var image: some View {
        Group {
                if let image = loader.image {
                    configuration(Image(uiImage: image).resizable())
            } else {
                placeholder
            }
        }
    }
}
