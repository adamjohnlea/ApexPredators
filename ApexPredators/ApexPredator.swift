//
//  ApedPredator.swift
//  ApexPredators
//
//  Created by Adam Lea on 12/27/22.
//

import Foundation

struct ApexPredator: Codable {
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let moviceScenes: movieScene
    let link: String
}


struct movieScene: Codable {
    let id: Int
    let movie: String
    let sceneDescription: String
}
