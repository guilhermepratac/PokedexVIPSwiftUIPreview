//
//  FeatureFactory.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import UIKit

protocol FeatureFactory {
    associatedtype Dependencies
    static func make(with dependencies: Dependencies) -> UIViewController
}
