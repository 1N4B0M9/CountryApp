//
//  TravelAdvisoryAPI.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 1/27/23.
//

import Foundation


// MARK: - Welcome2
struct Welcome2 : Codable {
    var apiStatus: APIStatus?
    var data: DataClass?
}

// MARK: - APIStatus
struct APIStatus : Codable {
    var request: Request?
    var reply: Reply?
}

// MARK: - Reply
struct Reply : Codable{
    var cache, code, status, note: String?
    var count: Int?
}

// MARK: - Request
struct Request : Codable{
    var item: String?
}

// MARK: - DataClass
struct DataClass : Codable{
    var code: Code?
    var situation: Situation?
    var lang: Lang?
}

// MARK: - Code
struct Code : Codable{
    var country, continent: String?
}

// MARK: - Lang
struct Lang : Codable{
    var de, en: De?
}

// MARK: - De
struct De : Codable{
    var country, continent, continentInfo: String?
    var urlDetails: String?
    var advice: String?
}

// MARK: - Situation
struct Situation : Codable{
    var sources: Int
    var rating, updated: String
}

class fetchAdv : ObservableObject {
    @Published var re : Welcome2 = Welcome2()
    @Published var fin : Bool = false
    func getData(erl : String) async  {
        
        let urlString = erl
        guard let url = URL(string: urlString) else {return}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let dataString = String(data: data, encoding: .utf8)
            print(dataString ?? "Hey")
            let r = try JSONDecoder().decode(Welcome2.self, from: data)
            self.re = r
            self.fin = true

               
        } catch {
            print(error)
        }
        
        
        
        
    }
}

