//
//  USStateCode.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation

// MARK: - USStateCode
struct USStateCode: Codable {
    let success: Bool
    let result: [StateCode]
}

// MARK: - Result
struct StateCode: Codable {
    let name, code: String
}
