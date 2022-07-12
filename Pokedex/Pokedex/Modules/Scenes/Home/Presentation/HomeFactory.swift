//
//  HomeFactory.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import UIKit

enum HomeFactory: FeatureFactory {
    struct Dependencies {}

    static func make(with dependencies: Dependencies) -> UIViewController {
        let view = HomeView()
        let presenter = HomePresenter()
        let worker = PokemonWorker(network: NetworkManager())
        let interactor = HomeInteractor(
            presenter: presenter,
            worker: worker
        )
        //let router = RestaurantDetailsRouter()
        let viewController = HomeViewController(
            customView: view,
            interactor: interactor
        )
        presenter.viewController = viewController

        return viewController
    }
}
