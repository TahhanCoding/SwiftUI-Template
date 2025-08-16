import Foundation

struct Item: Identifiable, Codable, Hashable {
    let id: UUID
    var title: String
    var description: String
    var price: Double
    var imageUrl: String
    var category: String
    var rating: Double
    var reviewCount: Int
    
    init(id: UUID = UUID(), title: String, description: String, price: Double, imageUrl: String, category: String, rating: Double, reviewCount: Int) {
        self.id = id
        self.title = title
        self.description = description
        self.price = price
        self.imageUrl = imageUrl
        self.category = category
        self.rating = rating
        self.reviewCount = reviewCount
    }
}
