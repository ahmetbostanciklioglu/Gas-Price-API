//
//  Endpoint.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation

enum Endpoint {
    case stateUsaPrice(state: String), allUsaPrice, usaStateCode
    
    var path: String {
        switch self {
        case .stateUsaPrice(let state):
            return "/stateUsaPrice?state=\(state)"
        case .allUsaPrice:
            return "/allUsaPrice"
        case .usaStateCode:
            return "/usaStateCode"
        }
    }
    
    var fullPath: String {
        Constants.baseUrl + path
    }
    
    
    func urlRequest() -> URLRequest {
        let queryItem = [
            URLQueryItem(name: "accept", value: "application/json")
        ]
        var urlComponents = URLComponents(string: fullPath)!
        urlComponents.queryItems = queryItem
        let url = urlComponents.url
        
        var request = URLRequest(url: url!)
        
        request.addValue(Constants.apikey, forHTTPHeaderField: "Authorization")
        
        return request
    }
}
