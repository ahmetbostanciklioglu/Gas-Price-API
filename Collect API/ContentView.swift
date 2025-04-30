//
//  ContentView.swift
//  Collect API
//
//  Created by Ahmet Bostanci on 30.04.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = GasPriceViewModel()
    @State var selectedName = "12345"
    
    var body: some View {
        ScrollView {
            VStack {
                if let response = viewModel.response?.result.state {
                    Text("\(response.premium)")
                        .font(.largeTitle.weight(.semibold))
                }
                
                if let response = viewModel.responseForAllUS?.result {
                    ForEach(response, id: \.name) { response in
                        Text(response.name)
                    }
                }
                
                if let stateCode = viewModel.responseUSStateCode?.result {
                    
                    Picker("Test", selection: $selectedName) {
                        ForEach(stateCode, id: \.code) { code in
                            Text(code.name)
                        }
                    }
                    .pickerStyle(.automatic)
                }
            }
            .padding()
        }
        .scrollIndicators(.hidden)
        .task {
            await viewModel.fetchForState()
            
            await viewModel.fetchUSStateCode()
            await viewModel.fetchForAllState()
        }
        
    }
}

#Preview {
    ContentView()
}
