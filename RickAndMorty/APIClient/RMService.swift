//
//  RMService.swift
//  RickAndMorty
//
//  Created by Yuxuan Wu on 1/27/23.
//

import Foundation

/// Primary API serive object to get Rick and Morty data
final class RMService {
    
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// constractor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T:Codable> (
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
