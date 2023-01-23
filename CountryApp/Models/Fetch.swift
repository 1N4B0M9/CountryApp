//
//  Fetch.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 12/28/22.
//

import Foundation

class FetchData : ObservableObject {
    //  @Published var people = People()
 //   @Published var response : Welcome = Welcome(introduction: nil, geography: nil, peopleAndSociety: nil, environment: nil, government: nil, economy: nil, energy: nil, communications: nil, transportation: nil, militaryAndSecurity: nil, terrorism: nil, transnationalIssues: nil)
    @Published var response : Welcome = Welcome(introduction: nil, geography: nil, peopleAndSociety: nil, environment: nil, government: nil, economy: nil, energy: nil, communications: nil, transportation: nil, militaryAndSecurity: nil, terrorism: nil, transnationalIssues: nil)
    @Published var responseSearch : Welcome = Welcome(introduction: nil, geography: nil, peopleAndSociety: nil, environment: nil, government: nil, economy: nil, energy: nil, communications: nil, transportation: nil, militaryAndSecurity: nil, terrorism: nil, transnationalIssues: nil)
  //homepage
    func getLocalData() async {
        
        let urlString = "https://github.com/factbook/factbook.json/raw/master/europe/gm.json"
        guard let url = URL(string: urlString) else {return}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let dataString = String(data: data, encoding: .utf8)
           // print(dataString ?? "Hey")
            let r = try JSONDecoder().decode(Welcome.self, from: data)
            print(r.geography?.coastline?.text ?? "urmom")
            self.response = r
            
               
        } catch {
            print(error)
        }
        
        
        
        
    }
    func getData(erl : String) async  {
        
        let urlString = erl
        guard let url = URL(string: urlString) else {return}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let dataString = String(data: data, encoding: .utf8)
           // print(dataString ?? "Hey")
            let r = try JSONDecoder().decode(Welcome.self, from: data)
            print(r.geography?.coastline?.text ?? "urmom")
            self.responseSearch = r
            
               
        } catch {
            print(error)
        }
        
        
        
        
    }

   
    
}
//https://raw.githubusercontent.com/iancoleman/cia_world_factbook_api/master/data/factbook.json
//https://github.com/factbook/factbook.json/raw/master/europe/gm.json
//https://github.com/iancoleman/cia_world_factbook_api/blob/master/data/factbook.json
