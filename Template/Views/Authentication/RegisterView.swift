import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var router: NavigationRouter
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
            VStack {
                Spacer()
                
                Text("Create Account")
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
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Button("Register") {
                    // Perform registration action
                    router.popToRoot()
                }
                .modernButtonStyle(.primary)
                .padding()
                
                Spacer()
                
                HStack {
                    Text("Already have an account?")
                    Button("Sign In") {
                        router.push(.login)
                    }
                    .foregroundColor(.accentColor)
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("Register")
            .navigationBarTitleDisplayMode(.inline)
    }
}
