import SwiftUI

struct ItemRow: View {
    let item: Item
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: item.imageUrl)) {
                image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
            } placeholder: {
                ProgressView()
                    .frame(width: 50, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(8)
            }
            
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
            
            Spacer()
            
            Text("$\(item.price, specifier: "%.2f")")
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .padding(.vertical, 4)
    }
}