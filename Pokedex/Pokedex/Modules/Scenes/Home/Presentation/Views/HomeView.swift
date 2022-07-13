//
//  HomeView.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import UIKit
import SnapKit

protocol HomeViewProtocol: UIView {
    func show(viewModel: Home.ViewModel)
}

class HomeView: UIView {

    var titleHeaderView: UIView = {
        let view = UIView()

        return view
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Pokedex"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black

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
        titleHeaderView.addSubview(titleLabel)
    }

    func setupConstraints() {
        titleHeaderView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(90)
        }

        titleLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
        }

    }


}

extension HomeView: HomeViewProtocol {
    func show(viewModel: Home.ViewModel) {
    }
}

class TESTECONTROLLER: UIViewController {

}
