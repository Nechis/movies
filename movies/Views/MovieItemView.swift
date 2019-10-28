//
//  MovieItemView.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import SwiftUI

struct MovieItemView: View {
    
    var movieItem: Movie
    
    var body: some View {
        NavigationLink(destination:MoviewDetailView(movie: movieItem)) {
            HStack{
                URLImage(url: movieItem.posterUrl())
                    .frame(width: 50, height: 50)
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(movieItem.title).font(.headline)
                    Text(movieItem.overview)
                        .lineLimit(2)
                }.layoutPriority(1)
                
                Spacer()
            }
        }
    }
}

struct MovieItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemView(movieItem: Movie.example)
    }
}
