import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    var username: String
    var email: String
    var avatarURL: String
    var bio: String
    
    init(id: UUID = UUID(), username: String, email: String, avatarURL: String, bio: String) {
        self.id = id
        self.username = username
        self.email = email
        self.avatarURL = avatarURL
        self.bio = bio
    }
}