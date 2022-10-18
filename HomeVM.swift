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
        movies.keys.map { String($0) }
    }
    
    public var allGenres: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCat category: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[category] ?? []
        case .movies:
            return (movies[category] ?? []).filter { $0.movieType == .movie && ($0.genre == genre) }
        case .tvShows:
            return (movies[category] ?? []).filter { $0.movieType == .tvShow && ($0.genre == genre) }
        case .myList:
            return movies[category] ?? []
        }
    }
    
    init() {
        setupMovies()
    }

    func setupMovies() {
        movies["Trending Now"] = moviesExamples
        movies["Stand-Up Comedy"] = moviesExamples.shuffled()
        movies["New Releases"] = moviesExamples.shuffled()
        movies["Watch It Again"] = moviesExamples.shuffled()
        movies["Sci-Fi Movies"] = moviesExamples.shuffled()
    }
}
    
