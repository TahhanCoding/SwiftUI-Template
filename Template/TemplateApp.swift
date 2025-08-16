//
//  TemplateApp.swift
//  Template
//
//  Created by Ahmed Shaban on 16/08/2025.
//

import SwiftUI

@main
struct TemplateApp: App {
    @StateObject private var router = NavigationRouter()
    @StateObject private var themeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                MainTabView()
                    .navigationDestination(for: Route.self) { route in
                        router.destination(for: route) 
                    }
            }
            .environmentObject(router)
            .environmentObject(themeManager)
            .preferredColorScheme(themeManager.colorScheme)
        }
    }
}
