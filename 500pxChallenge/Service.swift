//
//  Service.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-17.
//

import Foundation
import Alamofire


class PhotoService {
    func getPhotos(page: Int, onComplete: @escaping ([Photo]?, AFError?) -> ()) {
        let url = [NetworkingConstants.baseAPI, NetworkingConstants.version, NetworkingConstants.photos].createURL
        let parameters: Parameters = ["feature": "popular", "page": page, "consumer_key": NetworkingConstants.authenticationKey]
            AF.request(url, parameters: parameters).responseDecodable{ (response: DataResponse<Photos, AFError>) in
                onComplete(response.value?.photos, response.error)
            }
    }
}

