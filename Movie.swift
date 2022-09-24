//
//  Movie.swift
//  NetflixClone
//
//  Created by V K on 21.09.2022.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
