//
//  HomeView.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import UIKit

protocol HomeViewProtocol: UIView {
    func show(viewModel: Home.ViewModel)
}

class HomeView: UIView {

    var titleHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    lazy var title: UILabel = {
        let label = UILabel()
        label.text = "Pokedex"

        return label
    }()

    init() {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView: ViewCode {
    func setupComponents() {
        backgroundColor = .white
        addSubview(titleHeaderView)
        //titleHeaderView.addSubview(title)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleHeaderView.topAnchor.constraint(equalTo: topAnchor),
            titleHeaderView.heightAnchor.constraint(equalToConstant: 160)
        ])
    }


}

extension HomeView: HomeViewProtocol {
    func show(viewModel: Home.ViewModel) {
    }
}

class TESTECONTROLLER: UIViewController {

}
