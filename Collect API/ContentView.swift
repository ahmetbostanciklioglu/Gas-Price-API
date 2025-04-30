//
//  ContentView.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = GasPriceViewModel()
    
    var body: some View {
        VStack {
            if let response = viewModel.response?.result.state {
                Text("\(response.premium)")
                    .font(.largeTitle.weight(.semibold))
            }
        }
        .padding()
        .task {
            await viewModel.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
