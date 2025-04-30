//
//  Endpoint.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation


enum Endpoint {
    static  func urlRequest() -> URLRequest {
        let queryItem = [
            URLQueryItem(name: "accept", value: "application/json")
        ]
        var urlComponents = URLComponents(string: Constants.url)!
        urlComponents.queryItems = queryItem
        let url = urlComponents.url
        
        var request = URLRequest(url: url!)
        
        request.addValue(Constants.apikey, forHTTPHeaderField: "Authorization")
        
        return request
    }
}
