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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
