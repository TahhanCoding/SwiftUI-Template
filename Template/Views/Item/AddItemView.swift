import SwiftUI

struct AddItemView: View {
    @EnvironmentObject var router: NavigationRouter
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var price: String = ""
    @State private var imageUrl: String = ""
    @State private var category: String = ""
    
    var body: some View {
            Form {
                Section(header: Text("Item Details")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                    TextField("Price", text: $price)
                        .keyboardType(.decimalPad)
                    TextField("Image URL", text: $imageUrl)
                        .keyboardType(.URL)
                    TextField("Category", text: $category)
                }
                
                Button("Add Item") {
                    // Logic to add item
                    router.popToRoot()
                }
                .modernButtonStyle(.primary)
            }
            .navigationTitle("Add New Item")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        router.popToRoot()
                    }
                }
        }
    }
}
