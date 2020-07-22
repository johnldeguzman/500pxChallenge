//
//  String+Extensions.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-20.
//

import Foundation

extension BidirectionalCollection where Element: StringProtocol {
    var createURL: String {
        guard let last = last else { return "" }
        return count > 2 ? dropLast().joined(separator: "/") + "/" + last + "/" : joined(separator: "/")
    }
}
