//
//  TabBarView.swift
//  ListView+SwiftUI
//
//  Created by Developer on 26/01/2022.
//

import SwiftUI



struct TabBarView: View {
    @State var movies: [Movie] = TestData.movies
    
    var body: some View {
        TabView {
            NavigationView {
                MoviesView(movies: $movies, showOnlyFavorites: false)
            }
            .tabItem {
                Image(systemName: "list.bullet")
                    .font(.system(size: 26))
                Text("All movies")
            }
            NavigationView {
                MoviesView(movies: $movies, showOnlyFavorites: true)
            }
            .tabItem {
                Image(systemName: "heart")
                    .font(.system(size: 26))
                Text("Favorites")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
