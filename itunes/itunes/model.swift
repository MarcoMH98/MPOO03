//
//  model.swift
//  itunes
//
//  Created by Macbook on 26/09/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

struct Resultados : Codable{
    var resultCount: Int
    var results: [Track]
}

struct Track: Codable{
    var trackName: String
    var trackPrice: Double
    var artworkUrl100: String
}

