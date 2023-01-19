//
//  SearchBar.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 1/4/23.
//

import SwiftUI

struct SearchBar: View {
    let names = ["Holly", "Josh", "Rhonda", "Ted" , "Therbet", "Janie"]
    @State private var searchText = ""
    @StateObject var fetching = FetchOrganizer()


    var body: some View {
        
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink {
                        Text(name)
                    } label: {
                        Text(name)
                    }
                }
            }
         
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .ignoresSafeArea()
        .task {
            await fetching.getData()

        }
    
    }

    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
