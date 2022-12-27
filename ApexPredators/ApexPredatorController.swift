//
//  ApexPredatorController.swift
//  ApexPredators
//
//  Created by Adam Lea on 12/27/22.
//

import Foundation

class PredatorController {
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            } catch {
                print("Error decoding json data: \(error)")
            }
        }
    }
    
    func sortByAlphabetical() {
        apexPredators.sort(by: {$0.name < $1.name})
    }
    
    func sortByMovieAppearnace() {
        apexPredators.sort(by: { $0.id < $1.id })
    }
}
