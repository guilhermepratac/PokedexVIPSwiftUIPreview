//
//  HomePresenter.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation


protocol HomePresentationLogic {
    func presentData(response: Home.Response)
}

final class HomePresenter {
    weak var viewController: HomeDisplayLogic?
}

extension HomePresenter: HomePresentationLogic {
    func presentData(response: Home.Response) {
        viewController?.displayData(viewModel: .init())
    }
}
