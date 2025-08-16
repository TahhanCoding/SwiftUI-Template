import SwiftUI

enum Route: Hashable {
    case itemDetail(Item)
    case addItem
    case editItem(Item)
    case settings
    case profile
    case login
    case register
    case forgotPassword
    case onboarding
}

class NavigationRouter: ObservableObject {
    @Published var path: NavigationPath
    
    init() {
        _path = Published(initialValue: NavigationPath())
    }
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func popToRoot() {
        path = NavigationPath()
    }
    
    @ViewBuilder
    func destination(for route: Route) -> some View {
        switch route {
        case .itemDetail(let item):
            ItemDetailView(item: item)
        case .addItem:
            AddItemView()
        case .editItem(let item):
            EditItemView(item: item)
        case .settings:
            SettingsView()
        case .profile:
            ProfileView()
        case .login:
            LoginView()
        case .register:
            RegisterView()
        case .forgotPassword:
            ForgotPasswordView()
        case .onboarding:
            OnboardingView()
        }
    }
}
