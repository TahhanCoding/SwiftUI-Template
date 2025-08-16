import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var results: [Item] = []
    @State private var isSearching = false
    
    var body: some View {
            VStack {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                    .onChange(of: searchText) { _, newValue in
                        performSearch(query: newValue)
                    }
                
                if isSearching {
                    ProgressView("Searching...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if results.isEmpty && !searchText.isEmpty {
                    EmptyStateView(
                        title: "No Results",
                        message: "Try adjusting your search terms",
                        systemImage: "magnifyingglass"
                    )
                } else {
                    List(results) { item in
                        ItemRow(item: item)
                    }
                    .listStyle(.plain)
                }
                
                Spacer()
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private func performSearch(query: String) {
        guard !query.isEmpty else {
            results = []
            return
        }
        
        isSearching = true
        
        Task {
            try? await Task.sleep(nanoseconds: 500_000_000)
            await MainActor.run {
                results = MockData.items.filter {
                    $0.title.localizedCaseInsensitiveContains(query) ||
                    $0.description.localizedCaseInsensitiveContains(query)
                }
                isSearching = false
            }
        }
    }
}
