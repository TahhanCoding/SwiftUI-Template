import SwiftUI

struct ModernTabViewStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .tint(.accentColor)
    }
}

extension View {
    func modernTabViewStyle() -> some View {
        self.modifier(ModernTabViewStyle())
    }
}