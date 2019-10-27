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
    
    @State private var selection = 0
 
    let movies: [Movie] = [Movie(), Movie(), Movie()]
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection){
                List(viewModel.movies){
                    ForEach(movies){ movie in
                        Section(header: Text(movie.id.uuidString)){
                            MovieItemView(movieItem: movie)
                        }
                    }
                }
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Popular")
                    }
                }
                .tag(0)
                Text("Top Rated")
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image("second")
                            Text("Second")
                        }
                    }
                    .tag(1)
                Text("Upcoming")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Upcoming")
                    }
                }
                .tag(2)
            }
            .navigationBarTitle("Movies")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
