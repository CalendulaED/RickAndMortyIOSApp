//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Yuxuan Wu on 1/27/23.
//

import Foundation

/// Represnets unique API endpoint
@frozen enum RMEndpoint: String {
    /// End point to get character info
    case character // "character"
    /// End point to get location info
    case location
    /// End point to get episode info
    case episode
}
