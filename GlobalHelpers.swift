//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by V K on 21.09.2022.
//


import SwiftUI

let movieExample = Movie(id: UUID().uuidString, name: "What We Do In The Shadows", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.collider.com%2Fwp-content%2Fuploads%2F2020%2F04%2Fwhat-we-do-in-the-shadows-poster-scaled.jpg&f=1&nofb=1&ipt=33d48d1daabd21c1cd29b8291984c0c210ce524fff262151c60c966cb9ce6a18&ipo=images")!, categories: ["Comedy Horror", "Fantasy", "Mockumentary"], year: 2019, rating: "TV-MA", numberOfSeasons: 4, promoHeadline: "Watch Season 4 Now")
let movieExample1 = Movie(id: UUID().uuidString, name: "Foundation", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.themoviedb.org%2Ft%2Fp%2Foriginal%2Fdo9InU7vjt0xpraElOss6R1Tml6.jpg&f=1&nofb=1&ipt=5a83588c92a230677c1901ac1cc64c73f19120b55b6429b468583f183ea248a3&ipo=images")!, categories: ["Scoence Fiction", "Drama"], year: 2021, rating: "TV-MA", numberOfSeasons: 2, promoHeadline: "Watch Season 2 Now")
let movieExample2 = Movie(id: UUID().uuidString, name: "Pride & Prejudice", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.themoviedb.org%2Ft%2Fp%2Foriginal%2FvAxWpk857xbpaeoSvkRsfMbokPl.jpg&f=1&nofb=1&ipt=491e3be6529997425fe95e630a4fb21b1d9e7682687157d80ed5d7b76715dc41&ipo=images")!, categories: ["Costume Drama", "Romance"], year: 1995, rating: "TV-MA", numberOfSeasons: 1)
let movieExample3 = Movie(id: UUID().uuidString, name: "Blade Runner 2049", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdeluxeimg.com%2Fimages%2F2018%2F01%2F09%2FmUZsW.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Cyberpunk", "Mystery & Thriller", "Sci-Fi TV"], year: 2017, rating: "TV-MA")
let movieExample4 = Movie(id: UUID().uuidString, name: "Avatar", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F9f%2F19%2Fc3%2F9f19c33f08c671c3092d2d94cf3699df.jpg&f=1&nofb=1")!, categories: ["Fantasy", "Science Fiction", "Adventure", "Action"], year: 2009, rating: "TV-MA")
let movieExample5 = Movie(id: UUID().uuidString, name: "The Lord of the Rings: The Rings of Power", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fxl.movieposterdb.com%2F22_07%2F2022%2F7631058%2Fxl_7631058_1b3fe761.jpg%3Fv%3D2022-07-31%252008%3A33%3A24&f=1&nofb=1&ipt=5fac2f2d26f7da010659d9d75c9fc697e99c85cb425f1147f49d70952b459634&ipo=images")!, categories: ["Action", "Adventure", "Drama", "Fantasy"], year: 2022, rating: "TV-MA", numberOfSeasons: 1)

let moviesExamples: [Movie] = [movieExample, movieExample1, movieExample2, movieExample3, movieExample4, movieExample5]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
