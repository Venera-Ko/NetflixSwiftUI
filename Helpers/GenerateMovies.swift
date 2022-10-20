//
//  GenerateMovies.swift
//  NetflixClone
//
//  Created by V K on 19.10.2022.
//

import Foundation
import UserNotifications

func generateMovies(_ count: Int) -> [Movie] {
    guard count > 0 else { return [] }
    
    var allMovies: [Movie] = []
    
    for _ in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20),
            name = randomString(length: nameLength)
        
        let randomThumbnail = Int.random(in: 0...500),
            thumbnail = URL(string: "https://loremflickr.com/300/200/series,netflix/?random=\(randomThumbnail)")!
        
        let year = Int.random(in: 2000...2020)
        
        let cast = "Lorem ipsum, dolor sit",
            creators = "felis non, libero consectetur",
            categories = ["consectetur", "neque", "felis", "libero"],
            headline = "Watch now!"
        
        let numSeasons = Int.random(in: 1...5)
        
        var allEpisodes: [Episode] = []
        
        for i in 1...numSeasons {
            allEpisodes.append(contentsOf: generateEpisodes(5, forSeason: i))
        }
        
        let epinameLength = Int.random(in: 9..<20),
            epiname = randomString(length: epinameLength)
        
        let epidescLength = Int.random(in: 150..<200),
            epidesc = randomString(length: epidescLength)
        
        let defaultEpiInfo = CurrentEpisodeInfo(episodeName: epiname, description: epidesc, season: 1, episode: 1)
        
        let allTrailers = generateTrailers(3)
        
        let moreLikeThis = exampleMovies
        
        let movie = Movie(id: id, name: name, thumbnailURL: thumbnail, categories: categories, genre: .AllGenres, year: year, rating: "PG-13", numberOfSeasons: numSeasons, currentEpisode: defaultEpiInfo, defaulfEpisodeInfo: defaultEpiInfo, creators: creators, cast: cast, moreLikeThisMovies: moreLikeThis, episodes: allEpisodes, promoHeadline: headline, trailers: allTrailers, previewImageName: "")
        
        allMovies.append(movie)
    }
    
    return allMovies
}

func generateTrailers(_ count: Int) -> [Trailer] {
    var allTrailers: [Trailer] = []
    
    for _ in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20),
            name = randomString(length: nameLength)
        
        let randomThumbnail = Int.random(in: 0...50),
            thumbnail = URL(string: "https://loremflickr.com/300/200/movie,cinema/?random=\(randomThumbnail)")!
        
        let trailer = Trailer(id: id, name: name, videoURL: exampleVideoURL, thumbnailImageURL: thumbnail)
        
        allTrailers.append(trailer)
    }
    
    return allTrailers
}

func generateEpisodes(_ count: Int, forSeason season: Int) -> [Episode] {
    var allEpisodes: [Episode] = []
    
    for num in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20),
            name = randomString(length: nameLength)
        
        let randomThumbnail = Int.random(in: 0...50),
            thumbnail = "https://loremflickr.com/300/200/movie,cinema/?random=\(randomThumbnail)"
        
        let description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        
        let randomLength = Int.random(in: 20..<59)
        
        let episode = Episode(id: id, name: name, season: season, episodeNumber: num + 1, thumbnailImageURLString: thumbnail, description: description, length: randomLength, videoURL: exampleVideoURL)
        
        allEpisodes.append(episode)
    }
    
    return allEpisodes
}


func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyz"
    return String((0..<length).map { _ in letters.randomElement()! } )
}

