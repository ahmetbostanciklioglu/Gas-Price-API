//
//  GasPrice.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation

// MARK: - Response
struct Response: Codable {
    var success: Bool
    var result: Result
}

// MARK: - Result
struct Result: Codable {
    var state: StateData
    var cities: [StateData]
}

// MARK: - State
struct StateData: Codable {
    var unit: Unit
    var currency: Currency
    var gasoline, midGrade, premium, diesel: String
    var name, lowerName: String
}

enum Currency: String, Codable {
    case usd = "usd"
}

enum Unit: String, Codable {
    case usGallon = "us_gallon"
}
