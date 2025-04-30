//
//  GasPriceService.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation


actor GasPriceService {
    static let instance = GasPriceService()
    private init() { }
    
    func wpService(url: String = "https://api.collectapi.com/gasPrice/stateUsaPrice?state=WA") async throws -> Response {

        let (data, _) = try await URLSession.shared.data(for: Endpoint.urlRequest())
        
        return try JSONDecoder().decode(Response.self, from: data)
    }
}
