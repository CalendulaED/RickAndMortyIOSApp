//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Yuxuan Wu on 1/27/23.
//

import Foundation

/// Object that represent a single API Call
final class RMRequest {
    // Base Url
    // Endpoint
    // Path component
    // Query parameters
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path Component for API if any
    private let pathComponent: Set<String>
    
    /// Query Paramter for API if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator:  "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constrcuted API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    /// Constract request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponent: Collection of Path Component
    ///   - queryParameters: Collection of Query Parameters
    public init(
        endpoint: RMEndpoint,
        pathComponent: Set<String> = [],
        queryParameters:  [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
}
