//
//  ContentView.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: MovieViewModel
    var category: Category
    
    enum Category {
        case popular
        case topRanked
        case upcomming
    }
    
    var body: some View {
        NavigationView {
                List() {
                    ForEach(viewModel.getMovies(category: category)){ movie in
                        MovieItemView(movieItem: movie)
                    }
                }
            .navigationBarTitle("Movies")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init(), category: ContentView.Category.popular)
    }
}
