//
//  Trailer.swift
//  NetflixClone
//
//  Created by V K on 04.10.2022.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
