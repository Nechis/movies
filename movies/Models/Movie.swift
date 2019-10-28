//
//  Movie.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation

struct Movie: Codable, Identifiable {
    
   // public var movieId: UUID
    //public let popularity: String
    public let poster_path: String
    public var id: Int
    public var original_title: String
    public var title: String
    public var overview: String
    
    public init (
        //popularity: String,
                 poster_path: String,
                 id: Int,
                 original_title: String,
                 title: String,
                 overview: String
    ) {
     //   self.movieId = UUID()
        //self.popularity = popularity
        self.poster_path = poster_path
        self.id = 1//id
        self.original_title = original_title
        self.title = title
        self.overview = overview
    }
    
    public func posterUrl() -> String {
        return "https://image.tmdb.org/t/p/w500\(poster_path)"
    }
    
    #if DEBUG
    static let example = Movie(
       // popularity: "10",
        poster_path: "String",
        id: 0,
        original_title: "String",
        title: "String",
        overview: "String"
    )
    #endif

}
