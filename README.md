<div align="center">

# ⛽ Gas Price API

**A SwiftUI iOS app that fetches live US gasoline prices via the CollectAPI Gas Price service.**

![Platform](https://img.shields.io/badge/Platform-iOS-black?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-2496ED?style=flat-square&logo=swift&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-16-1575F9?style=flat-square&logo=xcode&logoColor=white)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/Gas-Price-API?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/Gas-Price-API?style=flat-square&color=4776E6)

</div>

## 📖 Overview

Gas Price API is a lightweight SwiftUI application that queries the [CollectAPI](https://collectapi.com) Gas Price endpoints to display current US fuel prices. It fetches prices for an individual state, prices across all states, and the list of US state codes, then renders them in a simple scrollable interface. The app demonstrates a clean MVVM structure with a typed endpoint layer and Swift's modern `async/await` networking.

## ✨ Features

- 🗺️ **Per-state prices** — fetches gasoline, mid-grade, premium, and diesel prices for a given US state.
- 🇺🇸 **All-states listing** — retrieves fuel prices for every US state in one call.
- 🔢 **State code lookup** — loads US state codes and names, presented in a SwiftUI `Picker`.
- ⚡ **Async networking** — an `actor`-isolated service using `URLSession` with `async/await`.
- 🧩 **Typed endpoints** — a strongly typed `Endpoint` enum builds each request path and header.
- 🏗️ **MVVM architecture** — Models, a `GasPriceViewModel`, and views are cleanly separated.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/Gas-Price-API.git
cd Gas-Price-API
cp Secrets.example.plist "Collect API/Secrets.plist"   # then paste your key
open "Collect API.xcodeproj"
```

Open `Collect API/Secrets.plist`, set `COLLECT_API_KEY` to your CollectAPI key (keep the `apikey ` prefix), then press **⌘R** in Xcode to build and run on a simulator or device.

> **Note:** The app talks to the CollectAPI Gas Price API, which requires an API key sent in the `Authorization` header. The key is read at runtime from `Collect API/Secrets.plist`, which is **git-ignored** so it never lands in source control — provide your own key from [collectapi.com](https://collectapi.com). Never commit a real key.

## 📋 Requirements

- iOS 18.0+
- Xcode 16+
- Swift 5.0+
- A CollectAPI account and API key

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
