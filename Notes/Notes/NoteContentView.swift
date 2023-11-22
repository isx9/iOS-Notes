//
//  NoteContentView.swift
//  Notes
//
//  Created by Isabella Di Lorenzi on 17/11/23.
//

import SwiftUI

struct NoteContentView: View {
    private var listOfSearches = SearchList
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searches, id: \.self) { search in
                    HStack {
                        Text(search.capitalized)
                        Spacer()
                        Image(systemName: "figure.walk")
                            .foregroundColor(Color.blue.opacity(0.8))
                    }
                    .padding()
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Folders")
        }
    }
    
    // Filter searches
    var searches: [String] {
        // Make searches lowercased
        let lcSearches = listOfSearches.map { $0.lowercased() }
        
        return searchText == "" ? lcSearches : lcSearches.filter { $0.contains(searchText.lowercased()) }
    }
}

struct NoteContentView_Previews: PreviewProvider {
    static var previews: some View {
        NoteContentView()
    }
}
