import SwiftUI

struct EditItemView: View {
    @EnvironmentObject var router: NavigationRouter
    @State var item: Item
    
    var body: some View {
            Form {
                Section(header: Text("Item Details")) {
                    TextField("Title", text: $item.title)
                    TextField("Description", text: $item.description)
                    TextField("Price", value: $item.price, format: .currency(code: "USD"))
                        .keyboardType(.decimalPad)
                    TextField("Image URL", text: $item.imageUrl)
                        .keyboardType(.URL)
                    TextField("Category", text: $item.category)
                }
                
                Button("Save Changes") {
                    // Logic to save changes
                    router.popToRoot()
                }
                .modernButtonStyle(.primary)
            }
            .navigationTitle("Edit Item")
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
