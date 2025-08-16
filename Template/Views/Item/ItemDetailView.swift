import SwiftUI

struct ItemDetailView: View {
    let item: Item
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                AsyncImage(url: URL(string: item.imageUrl)) {
                    image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
                
                Text(item.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("$\(item.price, specifier: "%.2f")")
                    .font(.title2)
                    .foregroundColor(.green)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("\(item.rating, specifier: "%.1f") (\(item.reviewCount) reviews)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Text(item.description)
                    .font(.body)
                
                Spacer()
            }
            .padding()
            .navigationTitle(item.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}