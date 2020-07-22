//
//  ImageLoader.swift
//  SquareChallenge
//
//  Created by John De Guzman on 2020-07-06.
//

import Foundation
import Combine
import SwiftUI
import AlamofireImage

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let url: URL
    let imageDownloader = ImageDownloader(
        configuration: ImageDownloader.defaultURLSessionConfiguration(),
        downloadPrioritization: .fifo,
        maximumActiveDownloads: 4,
        imageCache: AutoPurgingImageCache()
    )
    
    
    init(url: URL) {
        self.url = url
    }
  
    
    func load() {
        let urlRequest = URLRequest(url:url)
        imageDownloader.download(urlRequest) { response in
            if case .success(let image) = response.result {
                self.image = image
            }
        }
     
    }
    

    
}





