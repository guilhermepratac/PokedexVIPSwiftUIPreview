//
//  HomeInteractor.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation

protocol HomeBusinessLogic {
    func loadPokemons()
}

final class HomeInteractor {
    private let presenter:  HomePresentationLogic
    private let worker: PokemonWorkerProtocol

    init(
        presenter:  HomePresentationLogic,
        worker: PokemonWorkerProtocol
    ) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension HomeInteractor: HomeBusinessLogic {

    func loadPokemons() {

    }
}
