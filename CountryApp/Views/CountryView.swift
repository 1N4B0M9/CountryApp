//
//  CountryView.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 1/20/23.
//

import SwiftUI

struct CountryView: View {
    var naming : String
    @StateObject var fetching = FetchOrganizer()
    @Binding var countryNames : [String]
    @StateObject var fetch = FetchData()

    func strConversion(name : String) -> String {
        var n : Int = 0
        var s1 : String = ""
        var s2 : String = ""
        for (i,item) in countryNames.enumerated() {
            if(name == item) {
                n = i
            }
        }
        s1 = fetching.response[n].code + ".json"
        s2 = fetching.response[n].region.lowercased().replacingOccurrences(of: " ", with: "-").replacingOccurrences(of: "&", with: "n").replacingOccurrences(of: "and", with: "n")
        print(s1)
        print(s2)
        var erling = "https://github.com/factbook/factbook.json/raw/master/" + s2 + "/" + s1
        print(erling)
        print(fetching.response[n].name)
        return erling
    }
    var body: some View {
        Text("HI")
        Text(fetch.responseSearch.introduction?.background?.text ?? "Rip")
            .task {
                await fetching.getData()

                await fetch.getData(erl:strConversion(name: naming) )
                    
                    
                
            }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(naming: "Germany", countryNames: Binding.constant([]))
    }
}
