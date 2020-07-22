//
//  Photos.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-20.
//

import Foundation

struct Photo: Identifiable, Decodable {
    var id: Int
    var imageURL: [String]
    var user: User
    var name: String
    var description: String
    var location: String?
    
    enum CodingKeys: String, CodingKey {
        case id, description, name, location
        case imageURL = "image_url"
        case user = "user"
       }
}

struct Photos: Decodable {
    var photos: [Photo]
}

struct User: Decodable {
    var id: Int
    var username: String
    var displayPicture: String
    var fullname: String

    
    enum CodingKeys: String, CodingKey {
        case id, username, fullname
        case displayPicture = "userpic_url"
        
    }
}

class PhotoStore: ObservableObject {
    @Published var photo: [Photo] = []
    
    private let photoService = PhotoService()
    
    init() {
        callPhotos()
    }
    
    func callPhotos(page: Int = 1) {
        photoService.getPhotos(page: page){ [weak self] photo, error in
            print(error)
            if let photo = photo {
                self?.photo += photo
            } else {
                self?.photo = []
            }
        }
    }
}
