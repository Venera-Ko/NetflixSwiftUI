//
//  ContentView.swift
//  NetflixClone
//
//  Created by V K on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showPreviewFullscreen = false
    @State private var previewStartingIndex: Int = 0
    
    @State private var previewCurrentPosition: CGFloat = 1000
    @State private var previewNewPosition: CGFloat = 1000
    
    @State private var previewHorizontalDragActive: Bool = false
    
    let screen = UIScreen.main.bounds
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
            
            let previewDragGesture = DragGesture(minimumDistance: 20)
                .onChanged { value in
                    
                    if previewHorizontalDragActive {
                        return
                    }
                    
                    if previewCurrentPosition == .zero {
                        if abs(value.translation.width) > abs(value.translation.height) {
                            previewHorizontalDragActive = true
                            return
                        }
                    }
                    
                    ///vertical drag only
                    let shouldBePosition = value.translation.height + self.previewNewPosition
                    
                    if shouldBePosition < 0 {
                        return
                    } else {
                        self.previewCurrentPosition = shouldBePosition
                    }
                    
                }
                .onEnded { value in
                    if previewHorizontalDragActive {
                        previewHorizontalDragActive = false
                        return
                    }
                    
                    let shouldBePosition = value.translation.height + self.previewNewPosition
                    
                    if shouldBePosition < 0 {
                        self.previewNewPosition = .zero
                        self.previewNewPosition = .zero
                    } else {
                        let closingPoint = screen.size.height * 0.2
                        if shouldBePosition > closingPoint {
                            withAnimation {
                                self.showPreviewFullscreen = false
                                //                            self.previewNewPosition = .zero
                                //                            self.previewNewPosition = screen.height + 20
                                self.previewCurrentPosition = screen.height + 20
                                self.previewNewPosition = screen.height + 20
                            }
                        } else {
                            withAnimation {
                                self.previewNewPosition = .zero
                                self.previewCurrentPosition = .zero
                            }
                        }
                    }
                    
                    previewHorizontalDragActive = false
                }
            
            return ZStack {
                TabView {
                    HomeView(showPreviewFullscreen: $showPreviewFullscreen,
                             previewStartingIndex: $previewStartingIndex)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                    
                    SearchView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }.tag(1)
                    
                    ComingSoon()
                        .tabItem {
                            Image(systemName: "play.rectangle")
                            Text("Coming Soon")
                        }.tag(2)
                    
                    DownloadView()
                        .tabItem {
                            Image(systemName: "arrow.down.to.line.alt")
                            Text("Downloads")
                        }.tag(3)
                }
                .accentColor(.white)
                
                PreviewList(movies: exampleMovies,
                            currentSelection: $previewStartingIndex,
                            isVisible: $showPreviewFullscreen, externalDragGesture: previewDragGesture)
                .offset(y: previewCurrentPosition)
                .isHidden(!showPreviewFullscreen)
                .animation(.easeIn)
                .transition(.move(edge: .bottom))
            }
            .onChange(of: showPreviewFullscreen) { value in
                if value {
                    ///show fullscreen
                    withAnimation {
                        previewCurrentPosition = .zero
                        previewNewPosition = .zero
                    }
                } else {
                    ///hiding
                    withAnimation {
                        self.previewCurrentPosition = screen.height + 20
                        self.previewNewPosition = screen.height + 20
                        
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ContentView()
        }
    }
}
