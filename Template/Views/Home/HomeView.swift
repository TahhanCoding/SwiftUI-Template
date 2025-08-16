import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var router: NavigationRouter
    @State private var items = MockData.items
    @State private var searchText = ""
    
    private var filteredItems: [Item] {
        searchText.isEmpty ? items : items.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            SearchBar(text: $searchText)
                .padding(.horizontal)
            
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 16) {
                    ForEach(filteredItems) { item in
                        ItemCard(item: item) {
                            router.push(.itemDetail(item))
                        }
                        .modernCardStyle()
                    }
                }
                .padding()
            }
            .refreshable {
                await refreshData()
            }
        }
        .navigationTitle("Home")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Add") {
                    router.push(.addItem)
                }
                .modernButtonStyle(.primary)
            }
        }
    }
    
    private func refreshData() async {
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        items = MockData.items.shuffled()
    }
}

