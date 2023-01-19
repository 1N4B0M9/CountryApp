//
//  Organizer.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 1/18/23.
//

import Foundation
class FetchOrganizer : ObservableObject {
    
    @Published var response : [WelcomeElement] = []
    //= WelcomeElement(code: nil, name: nil, category: nil, region: nil)
    //@Published var response : countries = countries()
  
    func getData() async {
        /*
        let urlString = "https://github.com/factbook/factbook.json/raw/master/europe/gm.json"
        guard let url = URL(string: urlString) else {return}
        */
        guard let path = Bundle.main.path(forResource: "csvjson", ofType: "json") else {return}
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(fileURLWithPath: path))
            let dataString = String(data: data, encoding: .utf8)
           // print(dataString ?? "Hey")
            let r = try JSONDecoder().decode([WelcomeElement].self, from: data)
            print(r[0].name ?? "urmom")
            self.response = r
            
               
        } catch {
            print(error)
        }
        
        
        
        
    }
   
    
}
