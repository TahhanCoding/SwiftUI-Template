import SwiftUI

struct LoginView: View {
    @EnvironmentObject var router: NavigationRouter
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
            VStack {
                Spacer()
                
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                VStack(spacing: 20) {
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Button("Forgot Password?") {
                    router.push(.forgotPassword)
                }
                .font(.footnote)
                .padding(.top, 5)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
                
                Button("Login") {
                    // Perform login action
                    router.popToRoot()
                }
                .modernButtonStyle(.primary)
                .padding()
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                    Button("Sign Up") {
                        router.push(.register)
                    }
                    .foregroundColor(.accentColor)
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
    }
}
