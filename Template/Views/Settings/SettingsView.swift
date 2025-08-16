import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    var body: some View {
            Form {
                Section(header: Text("Appearance")) {
                    Toggle(isOn: $themeManager.isDarkMode) {
                        Label("Dark Mode", systemImage: "moon.fill")
                    }
                }
                
                Section(header: Text("General")) {
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        Label("Privacy Policy", systemImage: "hand.raised.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        Label("Terms of Service", systemImage: "doc.text.fill")
                    }
                }
                
                Section(header: Text("About")) {
                    HStack {
                        Label("Version", systemImage: "info.circle.fill")
                        Spacer()
                        Text("1.0.0")
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
        }
}
