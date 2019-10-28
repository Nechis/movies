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
     
    var body: some View {
        NavigationView {
         //   TabView(selection: $selection){
                List() {
                    ForEach(viewModel.popularMovies){ movie in
                        MovieItemView(movieItem: movie)
                    }
                }
                /*.tabItem {
                    VStack {
                        Text("Popular")
                    }
                }
                .tag(0)
                Text("Top Rated")
                    .font(.title)
                    .tabItem {
                        VStack {
                            Text("Second")
                        }
                    }
                    .tag(1)
                Text("Upcoming")
                .font(.title)
                .tabItem {
                    VStack {
                        Text("Upcoming")
                    }
                }
                .tag(2)
            }*/
            .navigationBarTitle("Movies")
            .listStyle(GroupedListStyle())
        }
        //.onAppear(perform: {self.viewModel.apply(.onAppear)})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
