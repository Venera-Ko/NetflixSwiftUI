//
//  ContentView.swift
//  NetflixClone
//
//  Created by V K on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            Text("search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
            
            Text("coming soon")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("1")
                }.tag(2)
            
            Text("downloads")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("1")
                }.tag(3)
            
            Text("more")
                .tabItem {
                    Image(systemName: "equal")
                    Text("1")
                }.tag(4)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
