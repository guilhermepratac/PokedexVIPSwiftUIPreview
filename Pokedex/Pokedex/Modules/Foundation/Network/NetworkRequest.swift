//
//  NetworkRequest.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

import Foundation

protocol NetworkRequest {
    var baseURL: String { get }
    var pathURL: String { get }
    var method: HTTPMethod { get }
}

enum HTTPMethod: String {
    case get
}

extension NetworkRequest {
    var baseURL: String {
        "https://raw.githubusercontent.com/devpass-tech/challenge-delivery-app/main/api/"
    }
}
