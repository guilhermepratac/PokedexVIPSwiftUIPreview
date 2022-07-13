//
//  PokemonRequest.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation

struct PokemonRequest: NetworkRequest {
    var pathURL: String = "restaurant_details.json"
    var method: HTTPMethod = .get
}
