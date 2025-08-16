import SwiftUI

class ThemeManager: ObservableObject {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false {
        didSet {
            applyColorScheme()
        }
    }
    
    @Published var colorScheme: ColorScheme = .light
    
    init() {
        applyColorScheme()
    }
    
    private func applyColorScheme() {
        colorScheme = isDarkMode ? .dark : .light
    }
    
    func toggleColorScheme() {
        isDarkMode.toggle()
    }
}