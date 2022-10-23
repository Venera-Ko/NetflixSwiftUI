//
//  PreviewVM.swift
//  NetflixClone
//
//  Created by V K on 21.10.2022.
//

import Foundation

class PreviewVM: ObservableObject {
     
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
