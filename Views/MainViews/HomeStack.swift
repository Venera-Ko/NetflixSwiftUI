//
//  HomeStack.swift
//  NetflixClone
//
//  Created by V K on 17.10.2022.
//

import SwiftUI

struct HomeStack: View {
    var vm: HomeVM
    
    var topRowSelection: HomeTopRow
    
    @Binding var movieDetailToShow: Movie? 
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .bold()
                        .font(.title3)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 100, height: 200)
                                .padding(.horizontal, 20)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                HomeStack(vm: HomeVM(), topRowSelection: .movies, movieDetailToShow: .constant(nil))
            }
        }
        .foregroundColor(.white)
    }
}
