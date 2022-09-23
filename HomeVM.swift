//
//  HomeVM.swift
//  NetflixClone
//
//  Created by V K on 21.09.2022.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    init() {
        setupMovies()
    }
    
    public func getMovie(forCat category: String) -> [Movie] {
        return movies[category] ?? []
    }

    func setupMovies() {
        movies["Trending Now"] = moviesExamples
        movies["Stand-Up Comedy"] = moviesExamples.shuffled()
        movies["New Releases"] = moviesExamples.shuffled()
        movies["Watch It Again"] = moviesExamples.shuffled()
        movies["Sci-Fi Movies"] = moviesExamples.shuffled()
    }
}
    
