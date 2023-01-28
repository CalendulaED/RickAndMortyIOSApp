//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Yuxuan Wu on 1/27/23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // Alive, Dead, unkown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
