//
//  MainView.swift
//  movies
//
//  Created by Inés Rojas on 27/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView(viewModel: .init())
                .tabItem {
                Text("Popular")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
