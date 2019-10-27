//
//  Movie.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation

struct Movie: Codable, Identifiable {
    
    public let popularity: String
    public let poster_path: String
    public let id: UUID
    public let original_title: String
    public let title: String
    public let overview: String
    
    public init(){
        self.popularity = ""
        self.poster_path = ""
        self.id = UUID()
        self.original_title = ""
        self.title = ""
        self.overview = ""
    }
    
    public init (popularity: String,
                 poster_path: String,
                 id: UUID,
                 original_title: String,
                 title: String,
                 overview: String) {
        self.popularity = popularity
        self.poster_path = poster_path
        self.id = id
        self.original_title = original_title
        self.title = title
        self.overview = overview
    }
    
    #if DEBUG
    static let example = Movie(
        popularity: "10",
        poster_path: "String",
        id: UUID(),
        original_title: "String",
        title: "String",
        overview: "String")
    #endif

}
