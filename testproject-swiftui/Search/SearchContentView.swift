//
//  SearchContentView.swift
//  testproject-swiftui
//
//  Created by Guilherme Piccoli on 01/04/20.
//  Copyright © 2020 Guilherme Piccoli. All rights reserved.
//

import SwiftUI

struct SearchContentView: View {
    
    let musics = ["Yellow Submarine", "Eleanor Rigby", "Let it be", "Help!", "Imagine"]
    @State private var searchText : String = ""
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText, placeholder: "Search songs")
            List {
                ForEach(self.musics.filter {
                    self.searchText.isEmpty ? true : $0.lowercased().contains(self.searchText.lowercased())
                }, id: \.self) { car in
                    Text(car)
                }
            }
        }.navigationBarTitle("Search Song", displayMode: .large)

    }
}


struct SearchContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchContentView()
    }
}

struct SearchBar: UIViewRepresentable {
    
    @Binding var text: String
    var placeholder: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = placeholder
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

