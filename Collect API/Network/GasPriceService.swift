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
    
    func wpService<T: Decodable>(url: Endpoint) async throws -> T {

        let (data, _) = try await URLSession.shared.data(for: url.urlRequest())
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
