//
//  MovieViewModel.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation

public class MovieViewModel: ObservableObject {
    
    private(set) var movies: [Movie] = []
    
    private let movieServices: MovieServices
    
    init(movieServices: MovieServices = MovieServices()){
        self.movieServices = movieServices
    }
    
    func getMovies(){
        movieServices.getMoviesV3(completion: { [weak self] result in
            switch result {
            case .success(let response):
                self?.movies = response.results
            case .failure(let error):
                self?.movies = []
            }
        })
    }
   
}
