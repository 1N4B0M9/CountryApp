//
//  OrganizerClass.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 1/18/23.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)


// MARK: - WelcomeElement
/*struct countries : Codable {
    //var country = [WelcomeElement](repeating: WelcomeElement(code: nil, name: nil, category: nil, region: nil), count : 300)
    var country : [WelcomeElement] = []
    
}
 */
struct WelcomeElement: Codable {
    
    var code, name: String
    var category: Category
    var region: String

    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case name = "Name"
        case category = "Category"
        case region = "Region"
    }
}

enum Category: String, Codable {
    case countries = "Countries"
    case dependenciesAustralia = "Dependencies (Australia)"
    case dependenciesChina = "Dependencies (China)"
    case dependenciesDenmark = "Dependencies (Denmark)"
    case dependenciesFrance = "Dependencies (France)"
    case dependenciesNetherlands = "Dependencies (Netherlands)"
    case dependenciesNewZealand = "Dependencies (New Zealand)"
    case dependenciesNorway = "Dependencies (Norway)"
    case dependenciesUnitedKingdom = "Dependencies (United Kingdom)"
    case dependenciesUnitedStates = "Dependencies (United States)"
    case miscellaneous = "Miscellaneous"
    case oceans = "Oceans"
    case other = "Other"
    case world = "World"
}
/*
enum Region: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case australiaOceania = "Australia-Oceania"
    case centralAmericaAndCaribbean = "Central America and Caribbean"
    case centralAsia = "Central Asia"
    case eastSoutheastAsia = "East & Southeast Asia"
    case europe = "Europe"
    case middleEast = "Middle East"
    case northAmerica = "North America"
    case oceans = "Oceans"
    case southAmerica = "South America"
    case southAsia = "South Asia"
    case world = "World"
}
 */

