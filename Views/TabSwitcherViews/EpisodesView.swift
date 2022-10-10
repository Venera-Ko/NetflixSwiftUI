//
//  EpisodesView.swift
//  NetflixClone
//
//  Created by V K on 10.10.2022.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        episodes.filter { $0.season == season }
    }
    
    var body: some View {
        VStack(spacing: 14) {
            ///season picker
            HStack {
                Button {
                    showSeasonPicker = true
                } label: {
                    Group {
                        Text("Season 4")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }
                
                Spacer()
            }
            ///episode list
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    ///hstack with preview
                    HStack {
                        VideoPreviewImage(imageURL: episode.videoURL, videoURL: episode.thumbnailURL)
                            .frame(width: 140, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 21))
                    }
                    
                    
                    //description
                    Text(episode.description)
                        .font(.system(size: 15))
                        .lineLimit(3)
                }
            }
            .padding(.bottom, 20)
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            EpisodesView(episodes: allExamplesEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(4))
        }
    }
}
