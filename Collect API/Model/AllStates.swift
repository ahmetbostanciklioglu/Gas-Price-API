//
//  AllStates.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation

// MARK: - AllStates
struct AllStates: Codable {
    let success: Bool
    let result: [AllState]
}

// MARK: - Result
struct AllState: Codable {
    let currency: Currency1
    let name, gasoline, midGrade, premium: String
    let diesel: String
}

enum Currency1: String, Codable {
    case usd = "usd"
}
