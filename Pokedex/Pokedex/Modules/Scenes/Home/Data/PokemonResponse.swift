//
//  PokemonResponse.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation

struct PokemonResponse: Decodable {
    let name: String
    let category: String
    let deliveryTime: DeliveryTime
    let reviews: Reviews
    let menu: [Menu]

    private enum CodingKeys: String, CodingKey {
        case name, category, reviews, menu
        case deliveryTime = "delivery_time"
    }
}

extension PokemonResponse {
    struct DeliveryTime: Decodable {
        let min: Int
        let max: Int
    }

    struct Reviews: Decodable {
        let score: Double
        let count: Int
    }

    struct Menu: Decodable {
        let category: String
        let name: String
        let price: Int
    }
}
