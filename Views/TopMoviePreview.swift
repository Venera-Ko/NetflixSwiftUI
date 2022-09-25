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
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
    
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
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 5))
                            }
                            
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOffImage: "plus", isOnImage: "checkmark", isOn: false) {
                        //
                    }
                    
                    Spacer()
                    
                    PlayButtonView(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOffImage: "info.circle", isOnImage: "info.circle", isOn: false) {
                        //
                    }
                    
                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacityGradient
                .padding(.top, 300))
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: movieExample4)
    }
}
