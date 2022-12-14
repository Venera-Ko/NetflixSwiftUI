//
//  MoviePreviewCell.swift
//  NetflixClone
//
//  Created by V K on 20.10.2022.
//

import SwiftUI
import Kingfisher

struct MoviePreviewCell: View {
    var movie: Movie
    
    let colors: [Color] = [.yellow, .gray, .pink, .red, .blue, .green, .orange]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay(
                Circle()
                    .stroke(lineWidth: 3.0)
                    .foregroundColor(colors.randomElement())
            )
            
            Image(movie.previewImageName)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
    }
}

struct MoviePreviewCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            MoviePreviewCell(movie: movieExample)
                .frame(width: 165, height: 50)
        }
        
    }
}
