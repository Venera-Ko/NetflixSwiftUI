//
//  Movie.swift
//  NetflixClone
//
//  Created by V K on 21.09.2022.
//

import Foundation

struct Movie: Identifiable {
//    static func == (lhs: Movie, rhs: Movie) -> Bool {
//        return lhs.id == rhs.id
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
            
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    //MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    //Personalisation
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaulfEpisodeInfo: CurrentEpisodeInfo
    
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promoHeadline: String?
    
    var trailers: [Trailer]
    
    var previewImageName: String
    var previewVideoURL: URL?
    
    var numOfSeasonsDisplayed: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }

    var episodeInfoDispalayed: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaulfEpisodeInfo.season):E\(defaulfEpisodeInfo.episode) \(defaulfEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplayed: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaulfEpisodeInfo.description
        }
    }
}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie, tvShow
}
