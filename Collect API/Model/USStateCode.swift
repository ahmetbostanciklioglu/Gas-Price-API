
// MARK: - USStateCode
struct USStateCode: Codable {
    let success: Bool
    let result: [Result]
}

// MARK: - Result
struct Result: Codable {
    let name, code: String
}
