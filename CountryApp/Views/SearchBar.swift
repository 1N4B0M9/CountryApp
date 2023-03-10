//
//  SearchBar.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 1/4/23.
//

import SwiftUI

struct SearchBar: View {
    

    @State private var searchText = ""
    @StateObject var fetching = FetchOrganizer()
    @State var countryNames : [String] = []
    @StateObject var fetch = FetchData()
    
    func getArr() async {
        countryNames.removeAll()
        for i in fetching.response {
            countryNames.append(i.name ?? " ")
        }
        print(countryNames[0])
    }
    

    var body: some View {
        ZStack {
            Color.DarkBlue
                .ignoresSafeArea()
        NavigationView {
            
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink {
                        CountryView(naming: name, countryNames: $countryNames)
                        //LoadingScreen(countryNames: $countryNames, s: name)
                    } label: {
                        ZStack{
                            Rectangle()
                                .ignoresSafeArea()
                                .cornerRadius(20)
                                .foregroundColor(.DarkBlue)
                        Text(name)
                            
                            .foregroundColor(.white)
                            .font(Constants.textFont)
                        }
                    }
                
                    

            }
            }

        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .task {
            await fetching.getData()
            await getArr()
            
        }
        }
    }

    var searchResults: [String] {
        if searchText.isEmpty {
            return countryNames
        } else {
            return countryNames.filter { $0.contains(searchText) }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}


