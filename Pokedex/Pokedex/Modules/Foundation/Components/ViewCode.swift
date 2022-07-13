//
//  ViewCode.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation

protocol ViewCode {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
}

extension ViewCode {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }

    func setupExtraConfiguration() {}
}
