//
//  Movie.swift
//  ListView+SwiftUI
//
//  Created by Developer on 26/01/2022.
//

import Foundation
import UIKit

struct Movie {
    let title: String
    let year: String
    let runtime: String
    let genre: String
    let director: String
    let actors: String
    let plot: String
    let country: String
    let awards: String
    let poster: String
    var isFavorite = false
}

extension Movie: Decodable {
    enum CodingKeys: String, CodingKey {
        case title
        case year
        case runtime
        case genre
        case director
        case actors
        case plot
        case country
        case awards
        case poster
    }
}
