//
//  LSDashboardView.swift
//  Light Star
//
//  Created by Akhil Verma on 25/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct LSDashboardView: View {
    @StateObject var viewModel: LSDashboardViewModel
    
    var body: some View {
        NavigationStack {
            List {
                headerSection
                NavigationLink {
                    Text("Hello, World!")
                } label: {
                    Text("Hello, World!")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Dashboard")
        }
    }
    
    private var headerSection: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Text("Watch")
                        .padding(12)
                        .background(.red.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Text("iPhone")
                        .padding(12)
                        .background(.orange.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Text("Macbook")
                        .padding(12)
                        .background(.brown.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Text("Devices")
                        .padding(12)
                        .background(.mint.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Text("Others")
                        .padding(12)
                        .background(.tint.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    LSDashboardView(viewModel: LSDashboardViewModel())
}
