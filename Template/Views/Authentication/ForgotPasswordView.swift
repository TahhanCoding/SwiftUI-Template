import SwiftUI

struct ForgotPasswordView: View {
    @EnvironmentObject var router: NavigationRouter
    @State private var email = ""
    
    var body: some View {
            VStack {
                Spacer()
                
                Text("Forgot Password")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                Text("Enter your email address to receive a password reset link.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button("Reset Password") {
                    // Perform password reset action
                    router.popToRoot()
                }
                .modernButtonStyle(.primary)
                .padding()
                
                Spacer()
                
                Button("Back to Login") {
                    router.push(.login)
                }
                .foregroundColor(.accentColor)
                .padding(.bottom, 20)
            }
            .navigationTitle("Forgot Password")
            .navigationBarHidden(true)
    }
}
