//
//  MovieDetailView.swift
//  NetflixClone
//
//  Created by V K on 25.09.2022.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        // close this view
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 25))
                    }
                }
                .padding(.horizontal, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadLine(movie: movie)
                        
                        if movie.promoHeadline != nil {
                            Text(movie.promoHeadline!)
                                .bold()
                                .font(.headline)
                        }
                    }
                }
                
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movieExample1)
    }
}

struct MovieInfoSubheadLine: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numOfSeasonsDisplayed)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 13))
        }
        .frame(width: 50, height: 20)
    }
}
