//
//  MainView.swift
//  movies
//
//  Created by Inés Rojas on 27/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import SwiftUI

struct MainView: View {

    @State private var selection = 0

    var body: some View {
        TabView(){
            ContentView(viewModel: .init(), category: ContentView.Category.popular)
                .tabItem {
                Text("Popular")
            }.tag(0)
            ContentView(viewModel: .init(), category: ContentView.Category.topRanked)
                .tabItem {
                Text("Top Rated")
            }.tag(1)
            ContentView(viewModel: .init(), category: ContentView.Category.upcomming)
                .tabItem {
                Text("Upcoming")
            }.tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
