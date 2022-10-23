//
//  PreviewList.swift
//  NetflixClone
//
//  Created by V K on 21.10.2022.
//

import SwiftUI

struct PreviewList: View {
    var movies: [Movie]
    
    @Binding var currentSelection: Int
    @Binding var isVisible: Bool
    
    @State private var currentTranlation: CGFloat = 0
    
    let externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>
    
    let screen = UIScreen.main.bounds
    
    func shouldPlayVideo(index: Int) -> Bool {
        if !isVisible {
            return false
        }
        
        if index != currentSelection {
            return false
        }
        
        return true
    }
    
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            PagerView(pageCount: movies.count,
                      currentIndex: $currentSelection,
                      translation: $currentTranlation, externalDragGesture: externalDragGesture) {
                
                ForEach(0..<movies.count) { movieIndex in
                    let movie = movies[movieIndex]
                    
                    PreviewView(vm: PreviewVM(movie: movie),
                    playVideo: shouldPlayVideo(index: movieIndex))
                        .frame(width: screen.width)
                }
            }
                      .frame(width: screen.width)
        }
    }
}

//struct ExamplePreviewList: View {
//    
//    @State private var currentSelection = 0
//    @State private var isVisible = true
//    
//    var body: some View {
//        PreviewList(movies: exampleMovies,
//                    currentSelection: $currentSelection,
//                    isVisible: $isVisible, externalGesture: externalDragGesture)
//    }
//}
//
//struct PreviewList_Previews: PreviewProvider {
//    static var previews: some View {
//        ExamplePreviewList()
//    }
//}
