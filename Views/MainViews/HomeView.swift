import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    
    @Binding var showPreviewFullscreen: Bool
    @Binding var previewStartingIndex: Int
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ///main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopRowSelection: $showTopRowSelection)
                    
                    TopMoviePreview(movie: movieExample4)
                        .frame(width: screen.width)
                        .padding(.top, -120)
                        .zIndex(-1)
                    
                    MoviePreviewRow(movies: exampleMovies,
                                    showPreviewFullscreen: $showPreviewFullscreen,
                                    previewStartingIndex:
                    $previewStartingIndex)
                    
                    HomeStack(vm: vm, topRowSelection: topRowSelection, selectedGenre: homeGenre, movieDetailToShow: $movieDetailToShow)//,
//                              showPreviewFullscreen: $showPreviewFullscreen,
//                              previewStartingIndex:
//                    $previewStartingIndex)
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }

            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.9)

                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id: \.self) { topRow in
                            Button {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            } label: {
                                if topRow == topRowSelection {
                                    Text("\(topRow.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(topRow.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        Spacer()
                        Button {
                            showTopRowSelection = false
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        }
                        .padding(.bottom, 25)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
            }
        }
        .foregroundColor(.white)

        if showGenreSelection {
            Group {
                Color.black.opacity(0.9)
                VStack(spacing: 40) {
                    Spacer()
                    ScrollView {
                        ForEach(vm.allGenres, id: \.self) { genre in
                            Button {
                                homeGenre = genre
                                showGenreSelection = false
                            } label: {
                                if genre == homeGenre {
                                    Text("\(genre.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(genre.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.bottom, 40)
                        }
                    }
                    Spacer()
                    Button {
                        showGenreSelection = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 40))
                    }
                    .padding(.bottom, 25)
                }
            }
            .edgesIgnoringSafeArea(.all)
            .font(.title2)
            .foregroundColor(.white)
        }
    }
}
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showPreviewFullscreen: .constant(false),
                 previewStartingIndex: .constant(0))
    }
}

struct TopRowButtons: View {
    
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: HomeGenre
    
    @Binding var showGenreSelection: Bool
    @Binding var showTopRowSelection: Bool
    
    var body: some View {
        switch topRowSelection {
        case .home:
            HStack {
                Button {
                    topRowSelection = .home
                } label: {
                    Image("LOGO")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                }
                
                Spacer()
                
                Button {
                    topRowSelection = .tvShows
                } label: {
                    Text("TV Shows")
                        .font(.callout)
                }
                
                Spacer()
                
                Button {
                    topRowSelection = .movies
                } label: {
                    Text("Movies")
                        .font(.callout)
                }
                
                Spacer()
                
                Button {
                    topRowSelection = .myList
                } label: {
                    Text("My List")
                        .font(.callout)
                }
            }
            .padding(.leading, 5)
            .padding(.trailing, 35)
            
        case .myList, .tvShows, .movies:
            HStack {
                Button {
                    topRowSelection = .home
                } label: {
                    Image("LOGO")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                }
                
                HStack(spacing: 20) {
                    Button {
                        showTopRowSelection = true
                    } label: {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                        Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: .center)
                        }
                    }
                    
                    Button {
                        showGenreSelection = true
                    } label: {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                    .font(.system(size: 6))
                                    .rotationEffect(.degrees(180), anchor: .center)
                        }
                    }
                    
                    Spacer()
                }
            }
            .padding(.leading, 30)
            .padding(.trailing, 35)
        }
    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre: String {
    case AllGenres = "All Genres"
    case Action, Comedy, Horror, Thriller
}

