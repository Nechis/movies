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
        HStack{
            Image("first")
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            VStack(alignment: .leading) {
                Text(movieItem.id.uuidString)
                Text(movieItem.title).font(.headline)
                Text(movieItem.original_title)
            }
        }
    }
}

struct MovieItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemView(movieItem: Movie.example)
    }
}
