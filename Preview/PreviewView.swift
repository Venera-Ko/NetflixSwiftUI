//
//  PreviewView.swift
//  NetflixClone
//
//  Created by V K on 21.10.2022.
//

import SwiftUI

struct PreviewView: View {
    
    @ObservedObject var vm: PreviewVM
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            TrailerPlayerView(videoURL: vm.movie.trailers.first?.videoURL,
                              playVideo: .constant(true))
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(vm.movie.name)
                            .foregroundColor(vm.movie.accentColor)
                            .bold()
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                }
                .padding(.leading, 20)
                .padding(.top, 60)
                
                Spacer()
                
                
                HStack {
                    ForEach(0..<vm.movie.categories.count) { categoryIndex in
                        let category = vm.movie.categories[categoryIndex]
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if categoryIndex != vm.movie.categories.count - 1 {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 4))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List",
                                        isOffImage: "checkmark",
                                        isOnImage: "plus",
                                        color: vm.movie.accentColor!,
                                        isOn: true) {
                        //
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        HStack {
                            Image(systemName: "arrowtriangle.right.fill")
                            Text("PLAY")
                                .fontWeight(.heavy)
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal, 26)
                        .border(vm.movie.accentColor!, width: 3)
                    }
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info",
                                        isOffImage: "info.circle",
                                        isOnImage: "info.circle",
                                        color: vm.movie.accentColor!,
                                        isOn: true) {
                        //
                    }
                    
                    Spacer()

                }
                .padding(.vertical, 14)
            }
            .padding(.bottom, 30)
            .foregroundColor(vm.movie.accentColor)
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView(vm: PreviewVM(movie: movieExample))
    }
}
