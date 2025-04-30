// MARK: - AllStates
struct AllStates: Codable {
    let success: Bool
    let result: [Result]
}

// MARK: - Result
struct Result: Codable {
    let currency: Currency
    let name, gasoline, midGrade, premium: String
    let diesel: String
}

enum Currency: String, Codable {
    case usd = "usd"
}
