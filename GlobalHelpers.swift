//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by V K on 21.09.2022.
//


import SwiftUI

let movieExample = Movie(id: UUID().uuidString, name: "What We Do In The Shadows", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Ffreshfiction.tv%2Fwp-content%2Fuploads%2F2015%2F02%2FWHAT-WE-DO-IN-THE-SHADOWS-poster.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Exciting","Suspensful", "Sci-Fi TV"])
let movieExample1 = Movie(id: UUID().uuidString, name: "The Pianist", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fis2-ssl.mzstatic.com%2Fimage%2Fthumb%2FVideo118%2Fv4%2F02%2F2a%2F68%2F022a689d-6c22-63ba-fdd2-6a8317f0051b%2Fsource%2F900x900bb.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Exciting","Suspensful", "Sci-Fi TV"])
let movieExample2 = Movie(id: UUID().uuidString, name: "Pride & Prejudice", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmir-s3-cdn-cf.behance.net%2Fproject_modules%2Fmax_3840%2Fd9406226379515.563549f333ebe.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Exiting","Suspensful", "Sci-Fi TV"])
let movieExample3 = Movie(id: UUID().uuidString, name: "Blade Runner 2049", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdeluxeimg.com%2Fimages%2F2018%2F01%2F09%2FmUZsW.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Exciting","Suspensful", "Sci-Fi TV"])
let movieExample4 = Movie(id: UUID().uuidString, name: "Avatar", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F9f%2F19%2Fc3%2F9f19c33f08c671c3092d2d94cf3699df.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Exciting","Suspensful", "Sci-Fi TV"])
let movieExample5 = Movie(id: UUID().uuidString, name: "Lord Of The Rings", thumbnailURL: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F58%2F6f%2F19%2F586f19b2cabf18ba2d9fbdbf14cf1b27.jpg&f=1&nofb=1")!, categories: ["Dystopian", "Exciting","Suspensful", "Sci-Fi TV"])

let moviesExamples: [Movie] = [movieExample, movieExample1, movieExample2, movieExample3, movieExample4, movieExample5]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
