//
//  DetailsView.swift
//  ListView+SwiftUI
//
//  Created by Developer on 26/01/2022.
//

import SwiftUI

// MARK: - DetailsView
struct DetailsView: View {
    @Binding var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 36.0) {
            HStack (alignment: .top, spacing: 24.0) {
                Image(movie.poster)
                    .resizable()
                    .frame(width: 150.0, height: 237.0)
                    .shadow(color: .gray, radius: 10.0, x: 5.0, y: 5.0)
                SideInfo(movie: $movie)
            }
            BottomInfo(movie: movie)
            Spacer()
        }
        .padding(.top, 18)
        .padding(.horizontal, 20)
        .navigationBarTitle(movie.title)
    }
}

// MARK: - SideInfo
struct SideInfo: View {
    @Binding var movie: Movie
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8.0) {
            HStack (alignment: .top) {
                VStack (alignment: .leading, spacing: 8.0) {
                    Text(movie.year + " , " + movie.country)
                    Text(movie.genre)
                    Text(movie.runtime)
                }
                .font(.callout)
                .foregroundColor(.secondary)
                .padding(.top, 6)
                Spacer()
                Button(action: { self.movie.isFavorite.toggle() }) {
                    Heart(isFilled: movie.isFavorite)
                        .font(.title)
                }
            }
            Text(movie.awards)
                .font(.callout)
                .foregroundColor(.secondary)
        }
    }
}

// MARK: - BottomInfo
struct BottomInfo: View {
    let movie: Movie
    
    var body: some View {
        VStack (alignment: .leading, spacing: 16.0) {
            VStack(alignment: .leading) {
                Text("Directed by:")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(movie.director)
                    .font(.headline)
            }
            VStack(alignment: .leading) {
                Text("Actors:")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(movie.actors)
                    .font(.headline)
            }
            Divider()
            Text(movie.plot)
                .font(.body)
        }
    }
}

// MARK: - Previews
struct DetailsView_Previews: PreviewProvider {
    static let movie = TestData.movies[0]
    
    static var previews: some View {
        Group {
            DetailsView(movie: .constant(movie))
            Group {
                SideInfo(movie: .constant(movie))
                BottomInfo(movie: movie)
            }
            .padding()
            .previewLayout(.sizeThatFits)
        }
    }
}
