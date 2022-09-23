//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by V K on 23.09.2022.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                            Image(systemName: "circle.fill")
                                .foregroundColor(.green)
                                .font(.system(size: 5))
                        }
                    }
                }
                Text("Buttons")
            }
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: movieExample4)
    }
}
