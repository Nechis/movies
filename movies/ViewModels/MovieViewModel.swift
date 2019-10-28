//
//  MovieViewModel.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation

public class MovieViewModel: ObservableObject {
    
    @Published private(set) var popularMovies: [Movie] = []
    @Published private(set) var topRankedMovies: [Movie] = []
    @Published private(set) var upcomingMovies: [Movie] = []

    private let movieServices: MovieServices
    
 
    init(movieServices: MovieServices = MovieServices()){
        self.movieServices = movieServices
        getPopularMovies()
        getTopRankedMovies()
        getUpcomingMovies()
    }
    
    func getMovies(category : ContentView.Category) -> [Movie]{
        switch category {
        case ContentView.Category.popular:
            return popularMovies
        case ContentView.Category.topRanked:
            return topRankedMovies
        case ContentView.Category.upcomming:
            return upcomingMovies
        }
    }
    
    func getPopularMovies(){
        movieServices.getPopularMoviesV3(completion: { [weak self] result in
            switch result {
            case .success(let response):
                self?.popularMovies = response.results
            case .failure(let error):
                self?.popularMovies = []
            }
        })
    }
    
    func getTopRankedMovies(){
        movieServices.getTopRankedMoviesV3(completion: { [weak self] result in
            switch result {
            case .success(let response):
                self?.topRankedMovies = response.results
            case .failure(let error):
                self?.topRankedMovies = []
            }
        })
    }
    
    func getUpcomingMovies(){
        movieServices.getUpcomingMoviesV3(completion: { [weak self] result in
            switch result {
            case .success(let response):
                self?.upcomingMovies = response.results
            case .failure(let error):
                self?.upcomingMovies = []
            }
        })
    }
   
}
