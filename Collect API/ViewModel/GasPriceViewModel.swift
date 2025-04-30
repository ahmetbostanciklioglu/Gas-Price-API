//
//  GasPriceViewModel.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation


class GasPriceViewModel: ObservableObject {
    @Published var response: Response?
    
    var service = GasPriceService.instance
    
    func fetchData() async {
        do {
            response = try await service.wpService()
        } catch {
            print(error)
        }
    }
}
