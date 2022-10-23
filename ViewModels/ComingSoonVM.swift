//
//  ComingSoonVM.swift
//  NetflixClone
//
//  Created by V K on 20.10.2022.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
