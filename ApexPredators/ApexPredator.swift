//
//  ApedPredator.swift
//  ApexPredators
//
//  Created by Adam Lea on 12/27/22.
//

import Foundation
import SwiftUI

struct ApexPredator: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let movieScenes: [movieScene]
    let link: String
    
    func typeOverlay() -> Color {
        switch type {
        case "land": return .brown
        case "air": return .teal
        case "sea": return .blue
        default:
            return .brown
        }
    }
}


struct movieScene: Codable {
    let id: Int
    let movie: String
    let sceneDescription: String
}
