//
//  HomeWorker.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation


protocol PokemonWorkerProtocol {
    func loadPokemon(completion: @escaping (Result<Pokemon, Error>) -> Void)
}

struct PokemonWorker {
    private let network: NetworkManagerProtocol

    init(network: NetworkManagerProtocol) {
        self.network = network
    }
}

extension PokemonWorker: PokemonWorkerProtocol {

    func loadPokemon(completion: @escaping (Result<Pokemon, Error>) -> Void) {
        let request = PokemonRequest()

        network.request(request) { (result: Result<PokemonResponse, Error>) in
            switch result {
                case let .success(response):
                    let pokemon = Pokemon(response: response)
                    completion(.success(pokemon))
                case let .failure(error):
                    completion(.failure(error))
            }
        }
    }

}
