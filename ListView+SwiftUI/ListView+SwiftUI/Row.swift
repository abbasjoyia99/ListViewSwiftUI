//
//  Row.swift
//  ListView+SwiftUI
//
//  Created by Developer on 26/01/2022.
//

import SwiftUI
struct Row: View {
    let movie: Movie
    var body: some View {
        HStack(spacing: 24.0) {
            Image(movie.poster)
                .resizable()
                .frame(width: 70.0, height: 110.0)
                .shadow(color: .gray, radius: 10.0, x: 4.0, y: 4.0)
            VStack(alignment: .leading, spacing: 4.0) {
                Text(movie.title)
                    .font(.headline)
                Text(movie.director)
                    .font(.subheadline)
                Group {
                    Text(movie.genre)
                    Text(movie.runtime)
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}
 
struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(movie: TestData.movies[0])
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
