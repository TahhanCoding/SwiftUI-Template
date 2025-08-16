import Foundation

struct MockData {
    static let items: [Item] = [
        Item(
            title: "Wireless Headphones",
            description: "High-quality sound with noise cancellation.",
            price: 199.99,
            imageUrl: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=300&fit=crop",
            category: "Electronics",
            rating: 4.5,
            reviewCount: 120
        ),
        Item(
            title: "Smartwatch",
            description: "Track your fitness and stay connected.",
            price: 249.99,
            imageUrl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=300&fit=crop",
            category: "Electronics",
            rating: 4.2,
            reviewCount: 85
        ),
        Item(
            title: "Running Shoes",
            description: "Lightweight and comfortable for long-distance running.",
            price: 99.00,
            imageUrl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=300&fit=crop",
            category: "Sports",
            rating: 4.4,
            reviewCount: 180
        )
    ]
    
    static let sampleUser = User(
        username: "ahmed_shaban",
        email: "ahmed.shaban@example.com",
        avatarURL: "https://source.unsplash.com/random/200x200?person",
        bio: "Passionate iOS Engineer | Clean Code Enthusiast | SwiftUI Lover"
    )
}
