//
//  MovieDBResponse.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation

struct MovieDBResponse: Codable {

    public var page: Int
    public var total_results: Int
    public var results: [Movie]
}
