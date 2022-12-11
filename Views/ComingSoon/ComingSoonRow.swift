//
//  ComingSoonRow.swift
//  NetflixClone
//
//  Created by V K on 20.10.2022.
//

import SwiftUI
import Kingfisher
import AVKit

struct ComingSoonRow: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    let screen = UIScreen.main.bounds
    
    var player: AVPlayer {
        AVPlayer(url: URL(string: "https://radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!)
    }
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(height: 200)
            
            VStack {
                HStack {
                    KFImage(movie.thumbnailURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 3, height: 75)
                        .clipped()
                    
                    Spacer()
                    Button {
                        //
                    } label: {
                        VStack {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("Remind Me")
                        }
                    }
                    .padding(.horizontal)
                    
                    Button {
                        movieDetailToShow = movie
                    } label: {
                        VStack {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("Info")
                        }
                    }
                    .padding(.trailing, 24)
                }
                .font(.caption)
                
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    Text(movie.episodeDescriptionDisplayed)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal, 6)
        }
    }
}

struct ComingSoonRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ComingSoonRow(movie: movieExample, movieDetailToShow: .constant(nil))
        }
    }
}
