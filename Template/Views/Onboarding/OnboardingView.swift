import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var router: NavigationRouter
    @State private var currentPage = 0
    
    let pages = [
        OnboardingPage(imageName: "sparkles", title: "Welcome to Template", description: "Your ultimate solution for managing everything."),
        OnboardingPage(imageName: "lightbulb", title: "Smart Features", description: "Discover powerful tools designed to simplify your life."),
        OnboardingPage(imageName: "lock.shield", title: "Secure & Private", description: "Your data is safe with us. We prioritize your privacy.")
    ]
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<pages.count, id: \.self) {
                    index in
                    OnboardingPageView(page: pages[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            Button(currentPage < pages.count - 1 ? "Next" : "Get Started") {
                if currentPage < pages.count - 1 {
                    currentPage += 1
                } else {
                    router.popToRoot()
                }
            }
            .modernButtonStyle(.primary)
            .padding()
        }
    }
}

struct OnboardingPage: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

struct OnboardingPageView: View {
    let page: OnboardingPage
    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: page.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.accentColor)
            
            Text(page.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text(page.description)
                .font(.title2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}