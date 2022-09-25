import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: movieExample4)
                        .frame(width: screen.width)
                        .padding(.top, -120)
                        .zIndex(-1)
                    
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
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("LOGO")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("TV Shows")
                    .font(.callout)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Movies")
                    .font(.callout)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("My List")
                    .font(.callout)
            }
        }
        .padding(.leading, 5)
        .padding(.trailing, 35)
    }
}
