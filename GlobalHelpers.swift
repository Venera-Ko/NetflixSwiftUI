//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by V K on 21.09.2022.
//


import SwiftUI

let exampleVideoURL = URL(string: "https://youtu.be/aVMkvCTT_yg")!



let exampleImageURL = URL(string: "https://i.ytimg.com/vi/aVMkvCTT_yg/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVMZd17u9W0Yb3aRP9Ahw2Bttx4A")!

let exampleImageURL1 = URL(string: "https://i.ytimg.com/vi/MW8RKweDoaE/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCwSDa29Kt4Cd_n_K3XmTxjRRkdyg")!

let exampleImageURL2 = URL(string: "https://i.ytimg.com/vi/EGcXF0iG-2s/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAhjCOek0FKlo-JuHhY3KKjU8svDg")!


let exampleTrailerURL =  URL(string: "https://youtu.be/L3pk_TBkihU")!
let exampleTrailerURL1 =  URL(string: "https://youtu.be/uTmBeR32GRA")!
let exampleTrailerURL2 =  URL(string: "https://youtu.be/YF1eYbfbH5k")!

//var randomExampleImageURL: URL {
//    [exampleImageURL, exampleImageURL1, exampleImageURL2].randomElement() ?? exampleImageURL
//}

let exampleTrailer = Trailer(name: "Trailer", videoURL: exampleTrailerURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer1 = Trailer(name: "The Mysterious", videoURL: exampleTrailerURL1, thumbnailImageURL: exampleImageURL1)

let exampleTrailer2 = Trailer(name: "WaterTower", videoURL: exampleTrailerURL2, thumbnailImageURL: exampleImageURL2)


let exampleTrailers = [exampleTrailer, exampleTrailer1, exampleTrailer2]



let movieExample = Movie(
    id: UUID().uuidString,
    name: "What We Do In The Shadows",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.collider.com%2Fwp-content%2Fuploads%2F2020%2F04%2Fwhat-we-do-in-the-shadows-poster-scaled.jpg&f=1&nofb=1&ipt=33d48d1daabd21c1cd29b8291984c0c210ce524fff262151c60c966cb9ce6a18&ipo=images")!,
    categories: ["Comedy Horror", "Fantasy", "Mockumentary"],
    year: 2019,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: moviesExamples,
    promoHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers
)

let movieExample1 = Movie(
    id: UUID().uuidString,
    name: "Foundation",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.themoviedb.org%2Ft%2Fp%2Foriginal%2Fdo9InU7vjt0xpraElOss6R1Tml6.jpg&f=1&nofb=1&ipt=5a83588c92a230677c1901ac1cc64c73f19120b55b6429b468583f183ea248a3&ipo=images")!,
    categories: ["Science Fiction", "Drama"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: [], promoHeadline: "Watch Season 2 Now",
    trailers: exampleTrailers
)

let movieExample2 = Movie(
    id: UUID().uuidString,
    name: "Pride & Prejudice",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.themoviedb.org%2Ft%2Fp%2Foriginal%2FvAxWpk857xbpaeoSvkRsfMbokPl.jpg&f=1&nofb=1&ipt=491e3be6529997425fe95e630a4fb21b1d9e7682687157d80ed5d7b76715dc41&ipo=images")!,
    categories: ["Costume Drama", "Romance"],
    year: 1995,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)

let movieExample3 = Movie(
    id: UUID().uuidString,
    name: "Blade Runner 2049",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdeluxeimg.com%2Fimages%2F2018%2F01%2F09%2FmUZsW.jpg&f=1&nofb=1")!,
    categories: ["Dystopian", "Cyberpunk", "Mystery & Thriller", "Sci-Fi TV"],
    year: 2017,
    rating: "TV-MA",
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)

let movieExample4 = Movie(
    id: UUID().uuidString,
    name: "Avatar",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F9f%2F19%2Fc3%2F9f19c33f08c671c3092d2d94cf3699df.jpg&f=1&nofb=1")!,
    categories: ["Fantasy", "Science Fiction", "Adventure", "Action"],
    year: 2009,
    rating: "TV-MA",
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)

let movieExample5 = Movie(
    id: UUID().uuidString,
    name: "The Lord of the Rings: The Rings of Power",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fxl.movieposterdb.com%2F22_07%2F2022%2F7631058%2Fxl_7631058_1b3fe761.jpg%3Fv%3D2022-07-31%252008%3A33%3A24&f=1&nofb=1&ipt=5fac2f2d26f7da010659d9d75c9fc697e99c85cb425f1147f49d70952b459634&ipo=images")!,
    categories: ["Action", "Adventure", "Drama", "Fantasy"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)

let movieExample6 = Movie(
    id: UUID().uuidString,
    name: "Tenet",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.traileraddict.com%2Fcontent%2Fwarner-bros-pictures%2Ftenet-poster.jpg&f=1&nofb=1&ipt=188d332a8011fc9e82592a34a7c46c0f0aae7cfc073598ed1bc06e9cef80825d&ipo=images")!,
    categories: ["Action", "Sci-Fi", "Thriller"],
    year: 2021, rating: "TV-MA",
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Christopher Nolan, Emma Thomas",
    cast: "Robert Pattinson, John David Washington, Elizabeth Debicki",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)




var moviesExamples: [Movie] {
    [movieExample6, movieExample1, movieExample2, movieExample3, movieExample4, movieExample5].shuffled()
}

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "The Trial", description: "The vampires must defend themselves as an international vampire tribunal gathers to judge them for their transgressions.", season: 1, episode: 7)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
