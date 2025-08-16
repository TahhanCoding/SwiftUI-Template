import SwiftUI

struct ModernCardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.cardBackground)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

extension View {
    func modernCardStyle() -> some View {
        self.modifier(ModernCardStyle())
    }
}