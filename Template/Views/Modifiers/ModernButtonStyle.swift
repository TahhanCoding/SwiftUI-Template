import SwiftUI

struct ModernButtonStyle: ViewModifier {
    enum Style {
        case primary
        case secondary
        case destructive
    }
    
    let style: Style
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(textColor)
            .padding()
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
    }
    
    private var textColor: Color {
        switch style {
        case .primary: return .white
        case .secondary: return .accentColor
        case .destructive: return .white
        }
    }
    
    private var backgroundColor: Color {
        switch style {
        case .primary: return .accentColor
        case .secondary: return .accentColor.opacity(0.1)
        case .destructive: return .red
        }
    }
}

extension View {
    func modernButtonStyle(_ style: ModernButtonStyle.Style) -> some View {
        self.modifier(ModernButtonStyle(style: style))
    }
}