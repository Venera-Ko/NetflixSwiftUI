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


let exampleTrailerURL =  URL(string: "https://assets.mixkit.co/videos/preview/mixkit-cheerful-man-moves-forward-dancing-in-the-middle-of-nature-32746-large.mp4")!

let exampleTrailerURL1 =  URL(string: "https://youtu.be/XQu8TTBmGhA")!
let exampleTrailerURL2 =  URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4")!


let exampleTrailer = Trailer(name: "Trailer", videoURL: exampleTrailerURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer1 = Trailer(name: "The Mysterious", videoURL: exampleTrailerURL1, thumbnailImageURL: exampleImageURL1)

let exampleTrailer2 = Trailer(name: "WaterTower", videoURL: exampleTrailerURL2, thumbnailImageURL: exampleImageURL2)


let exampleTrailers = [exampleTrailer, exampleTrailer1, exampleTrailer2]


let episode = Episode(name: "Reunited",
                      season: 4,
                      episodeNumber: 1,
                      thumbnailImageURLString: "https://i.kinja-img.com/gawker-media/image/upload/t_original/xoydv7itzeysa84u17rl.jpg",
                      description: "The vampires return from their world travels to find their mansion on the verge of collapse, and a freakish new creature in the house.",
                      length: 23,
                      videoURL: URL(string: "https://youtu.be/2RufnSeoOKA")!)

let episode1 = Episode(name: "The Lamp",
                      season: 4,
                      episodeNumber: 2,
                      thumbnailImageURLString: "https://image.tmdb.org/t/p/original/n6GN1ywczfQPX5mT1jM3bAeFBnz.jpg",
                      description: "Nandor's search for love is finally successful, and Nadja realizes her lifelong ambition of opening a vampire nightclub.",
                      length: 27,
                      videoURL: URL(string: "https://youtu.be/x4-IMi96GSE")!)

let episode2 = Episode(name: "The Grand Opening",
                      season: 4,
                      episodeNumber: 3,
                      thumbnailImageURLString: "https://tv-fanatic-res.cloudinary.com/iu/s--21QbJM3z--/t_full/cs_srgb,f_auto,fl_strip_profile.lossy,q_auto:420/v1554951735/standing-ground-what-we-do-in-the-shadows-s1e3.jpg",
                      description: "Opening night of Nadja's vampire nightclub is threatened when the big musical guest cancels.",
                      length: 24,
                      videoURL: URL(string: "https://youtu.be/bAI66Il1Tko")!)

let episode3 = Episode(name: "Reunited",
                      season: 1,
                      episodeNumber: 1,
                      thumbnailImageURLString: "https://i.kinja-img.com/gawker-media/image/upload/t_original/xoydv7itzeysa84u17rl.jpg",
                      description: "The vampires return from their world travels to find their mansion on the verge of collapse, and a freakish new creature in the house.",
                      length: 23,
                      videoURL: URL(string: "https://youtu.be/2RufnSeoOKA")!)

let episode4 = Episode(name: "The Lamp",
                      season: 2,
                      episodeNumber: 2,
                      thumbnailImageURLString: "https://image.tmdb.org/t/p/original/n6GN1ywczfQPX5mT1jM3bAeFBnz.jpg",
                      description: "Nandor's search for love is finally successful, and Nadja realizes her lifelong ambition of opening a vampire nightclub.",
                      length: 27,
                      videoURL: URL(string: "https://youtu.be/x4-IMi96GSE")!)

let episode5 = Episode(name: "The Grand Opening",
                      season: 3,
                      episodeNumber: 3,
                      thumbnailImageURLString: "https://tv-fanatic-res.cloudinary.com/iu/s--21QbJM3z--/t_full/cs_srgb,f_auto,fl_strip_profile.lossy,q_auto:420/v1554951735/standing-ground-what-we-do-in-the-shadows-s1e3.jpg",
                      description: "Opening night of Nadja's vampire nightclub is threatened when the big musical guest cancels.",
                      length: 24,
                      videoURL: URL(string: "https://youtu.be/bAI66Il1Tko")!)


var allExamplesEpisodes = [episode, episode1, episode2, episode3, episode4, episode5]

let movieExample = Movie(
    id: UUID().uuidString,
    name: "What We Do In The Shadows",
    thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.collider.com%2Fwp-content%2Fuploads%2F2020%2F04%2Fwhat-we-do-in-the-shadows-poster-scaled.jpg&f=1&nofb=1&ipt=33d48d1daabd21c1cd29b8291984c0c210ce524fff262151c60c966cb9ce6a18&ipo=images")!,
    categories: ["Comedy Horror", "Fantasy", "Mockumentary"],
    year: 2019,
    rating: "TV-MA",
    numberOfSeasons: 5,
    accentColor: Color.green,
    defaulfEpisodeInfo: exampleEpisodeInfo,
    creators: "Taika Waititi, Jemaine Clement",
    cast: "Kayvan Novak, Matt Berry, Natasia Demetriou",
    moreLikeThisMovies: exampleMovies,
    episodes: allExamplesEpisodes,
    promoHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
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
    trailers: exampleTrailers, previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL
    )




var exampleMovies: [Movie] {
    [movieExample6, movieExample1, movieExample2, movieExample3, movieExample4, movieExample5]
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

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension View {
    ///hides or shows the view based on a boolean value
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
