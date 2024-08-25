//
//  LSTabbarView.swift
//  Light Star
//
//  Created by Akhil Verma on 25/08/24.
//  Copyright © 2024 OCloud Labs. All rights reserved.
//

import SwiftUI

struct LSTabbarView: View {
    var body: some View {
        TabView {
            LSDashboardView(viewModel: LSDashboardViewModel())
                .tabItem {
                    Label("Dashboard", systemImage: "house")
                }
            
            LSSettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    LSTabbarView()
}
