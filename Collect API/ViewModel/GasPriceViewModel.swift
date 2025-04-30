//
//  GasPriceViewModel.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation


class GasPriceViewModel: ObservableObject {
    @Published var response: Response?
    @Published var responseForAllUS: AllStates?
    @Published var responseUSStateCode: USStateCode?
    
    var service = GasPriceService.instance
    
    func fetchForState() async {
        do {
            response = try await service.wpService(url: .stateUsaPrice(state: "WA"))
        } catch {
            print(error)
        }
    }
    
    func fetchForAllState() async {
        do {
            responseForAllUS = try await service.wpService(url: .allUsaPrice)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchUSStateCode() async {
        do {
            responseUSStateCode = try await service.wpService(url: .usaStateCode)
        } catch {
            print(error.localizedDescription)
        }
    }
}
