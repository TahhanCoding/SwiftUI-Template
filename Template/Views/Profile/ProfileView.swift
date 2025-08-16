import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var router: NavigationRouter
    @State private var user = MockData.sampleUser
    
    var body: some View {
            ScrollView {
                VStack(spacing: 24) {
                    // Profile Header
                    VStack(spacing: 16) {
                        AsyncImage(url: URL(string: user.avatarURL)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.accentColor, lineWidth: 4))
                        } placeholder: {
                            ProgressView()
                                .frame(width: 100, height: 100)
                                .background(Color.gray.opacity(0.3))
                                .clipShape(Circle())
                        }
                        
                        Text(user.username)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text(user.email)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text(user.bio)
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    .padding(.bottom, 24)
                    
                    // User Actions
                    VStack(spacing: 16) {
                        ProfileActionButton(title: "Edit Profile", systemImage: "pencil") {
                            // Action to edit profile
                        }
                        
                        ProfileActionButton(title: "Order History", systemImage: "box.truck.fill") {
                            // Action to view order history
                        }
                        
                        ProfileActionButton(title: "Settings", systemImage: "gear") {
                            router.push(.settings)
                        }
                        
                        ProfileActionButton(title: "Logout", systemImage: "arrow.right.square.fill", isDestructive: true) {
                            // Action to log out
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileActionButton: View {
    let title: String
    let systemImage: String
    var isDestructive: Bool = false
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: systemImage)
                    .font(.headline)
                Text(title)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(isDestructive ? Color.red.opacity(0.1) : Color.accentColor.opacity(0.1))
            .foregroundColor(isDestructive ? .red : .accentColor)
            .cornerRadius(10)
        }
    }
}
