//
//  MoviewDetailView.swift
//  movies
//
//  Created by Inés Rojas on 27/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import SwiftUI

struct MoviewDetailView: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            URLImage(url: movie.posterUrl())
            Text(movie.overview).padding()
            Spacer()
        }.navigationBarTitle(Text(movie.title), displayMode: .inline)
    }
}

struct MoviewDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MoviewDetailView(movie: Movie.example)
        }
    }
}
