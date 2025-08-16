import SwiftUI

struct ItemCard: View {
    let item: Item
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: item.imageUrl)) {
                    image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 150)
                        .clipped()
                } placeholder: {
                    ProgressView()
                        .frame(height: 150)
                        .background(Color.gray.opacity(0.3))
                }
                
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                
                Text("$\(item.price, specifier: "%.2f")")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }
        }
    }
}