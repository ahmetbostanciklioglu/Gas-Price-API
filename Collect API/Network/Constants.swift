//
//  Constants.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import Foundation

enum Constants {
    static let baseUrl = "https://api.collectapi.com/gasPrice"

    /// CollectAPI `Authorization` header value (format: `apikey <token>`).
    ///
    /// Loaded at runtime from `Secrets.plist`. That file is bundled with the app
    /// but kept out of source control (see the repo's `.gitignore`), so the key is
    /// never committed. To set it up, copy `Secrets.example.plist` to
    /// `Collect API/Secrets.plist` and fill in `COLLECT_API_KEY`.
    static let apikey: String = {
        guard
            let url = Bundle.main.url(forResource: "Secrets", withExtension: "plist"),
            let data = try? Data(contentsOf: url),
            let plist = try? PropertyListSerialization.propertyList(from: data, format: nil),
            let dict = plist as? [String: Any],
            let key = dict["COLLECT_API_KEY"] as? String,
            !key.isEmpty,
            !key.contains("YOUR_COLLECTAPI_KEY_HERE")
        else {
            fatalError(
                #"Missing CollectAPI key. Copy Secrets.example.plist to "Collect API/Secrets.plist" "#
                + "and set COLLECT_API_KEY. See the README for details."
            )
        }
        return key
    }()
}
