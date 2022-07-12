//
//  ViewController.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import UIKit

protocol HomeDisplayLogic: AnyObject {
    func displayData(viewModel: Home.ViewModel)
}

class HomeViewController: UIViewController {

    private let interactor: HomeBusinessLogic
    //private let router: HomeRoutingLogic
    private let customView: HomeViewProtocol

    // MARK: - Object lifecycle
    init(
        customView: HomeViewProtocol,
        interactor: HomeBusinessLogic
        //router: HomeRoutingLogic
    ) {
        self.customView = customView
        self.interactor = interactor
        //self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: HomeDisplayLogic{
    func displayData(viewModel: Home.ViewModel) {
        customView.show(viewModel: viewModel)
    }

}

