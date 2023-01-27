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
    @StateObject var fe = fetchAdv()

    func strConversion(name : String) -> String {
        var n : Int = 0
        var s1 : String = ""
        var s2 : String = ""
        for (i,item) in countryNames.enumerated() {
            if(name == item) {
                n = i
            }
        }
        s1 = (fetching.response[n].code ?? " ") + ".json"
        s2 = fetching.response[n].region?.lowercased().replacingOccurrences(of: " ", with: "-").replacingOccurrences(of: "&", with: "n").replacingOccurrences(of: "and", with: "n") ?? " "
        print(s1)
        print(s2)
        var erling = "https://github.com/factbook/factbook.json/raw/master/" + s2 + "/" + s1
        print(erling)
        print(fetching.response[n].name)
        return erling
    }
    func strConversion2(name : String) -> String{
        var s2 = ""
        var n : Int = 0
        var s1 = "https://www.reisewarnung.net/api?country="
        for (i,item) in countryNames.enumerated() {
            if(name == item) {
                n = i
            }
        }
        s2 = fetching.response[n].isoAlpha2 ?? ""
        print(s1+s2.uppercased())
        return s1 + s2.uppercased()
        
        
    }
    
    var body: some View {
        ZStack {
            if fetch.finished == true && fe.fin == true {
                withAnimation(.easeInOut(duration: 5.0)){
                ZStack {
                    Color.DarkBlue
                        .ignoresSafeArea()
                           VStack {
                               HStack{
                                   Text(naming)
                                       .font(Constants.TitleFont.bold())
                                       .foregroundColor(.white)
                                   Image("logo")
                                       .resizable()
                                       .frame(width: UIScreen.main.bounds.size.width-300, height: UIScreen.main.bounds.size.width-300)
                               }
                               ScrollView {
                                   VStack {
                                       ZStack {
                                           Rectangle()
                                               .foregroundColor(.LightBlue.opacity(0.3))
                                               .cornerRadius(30)
                                               .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-750)
                                            VStack {
                                                Text("Travel Advisory: ")
                                                    .font(Constants.HeaderFont)
                                                    .bold()
                                                    .multilineTextAlignment(.leading)
                                                    .foregroundColor(.white)
                                                Text(fe.re.data?.lang?.en?.advice ?? "Rip")
                                                    .font(Constants.textFont)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: UIScreen.main.bounds.size.width-50)
                                                    .foregroundColor(.white)
                                                     }
                                       }
                                       ZStack {
                                           Rectangle()
                                               .foregroundColor(.LightBlue.opacity(0.3))
                                               .cornerRadius(30)
                                               .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-750)
                                            VStack {
                                                Text("Location: ")
                                                    .font(Constants.HeaderFont)
                                                    .bold()
                                                    .multilineTextAlignment(.leading)
                                                    .foregroundColor(.white)
                                                Text(fetch.responseSearch.geography?.location?.text ?? "Rip")
                                                    .font(Constants.textFont)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: UIScreen.main.bounds.size.width-50)
                                                    .foregroundColor(.white)
                                                     }
                                       }
                                                 
                                       VStack {
                                           ZStack {
                                               Rectangle()
                                                   .foregroundColor(.LightBlue.opacity(0.3))
                                                   .cornerRadius(30)
                                                   .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-725)
                                               VStack {
                                                   Text("Bordering Countries: ")
                                                       .font(Constants.HeaderFont)
                                                       .bold()
                                                       .multilineTextAlignment(.leading)
                                                       .foregroundColor(.white)
                                                   Text(fetch.responseSearch.geography?.landBoundaries?.borderCountries?.text ?? "Rip")
                                                       .font(Constants.textFont)
                                                       .multilineTextAlignment(.leading)
                                                       .frame(width: UIScreen.main.bounds.size.width-50)
                                                       .foregroundColor(.white)
                                                     }
                                                 }
                                                 }
                                       

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-750)

                                                     VStack {

                                                         Text("Area Comparitive: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.geography?.areaComparative?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-50)

                                                             .foregroundColor(.white)

                                                             

                                                     }

                                                 }

                                                 

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-675)

                                                     VStack {

                                                         Text("Geography Notes: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.geography?.geographyNote?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-60)

                                                             .foregroundColor(.white)

                                                         

                                                     }

                                                 }

                                                 

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-750)

                                                     VStack {

                                                         Text("Terrain: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.geography?.terrain?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-40)

                                                             .foregroundColor(.white)

                                                       

                                                     }

                                                 }



                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-750)

                                                     VStack {

                                                         Text("Climate: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.environment?.climate?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-40)

                                                             .foregroundColor(.white)

                                                           

                                                     }

                                                 }

                                                 

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-775)

                                                     VStack {

                                                         Text("Population: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.peopleAndSociety?.population?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-60)

                                                             .foregroundColor(.white)

                                                          

                                                     }

                                                 }

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-650)

                                                     VStack {

                                                         Text("Population Distribution: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.peopleAndSociety?.populationDistribution?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-60)

                                                             .foregroundColor(.white)

                                                        

                                                     }

                                                 }

                                                 

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-750)

                                                     VStack {

                                                         Text("Religions: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.peopleAndSociety?.religions?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-60)

                                                             .foregroundColor(.white)

                                                            

                                                     }

                                                 }

                                                 

                                                 }

                                                     

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-675)

                                                     VStack {

                                                         Text("Languages: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.peopleAndSociety?.languages?.languages?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-60)

                                                             .foregroundColor(.white)

                                                          

                                                     }

                                                 }

                                                 

                                                 

                                                 

                                                 

                                                 ZStack {

                                                     Rectangle()

                                                         .foregroundColor(.LightBlue.opacity(0.3))

                                                         .cornerRadius(30)

                                                         .frame(width: UIScreen.main.bounds.size.width-30, height: UIScreen.main.bounds.size.height-600)

                                                     VStack {

                                                         Text("Ethnic Groups: ")

                                                             .font(Constants.HeaderFont)

                                                             .bold()

                                                             .multilineTextAlignment(.leading)

                                                             .foregroundColor(.white)

                                                         Text(fetch.responseSearch.peopleAndSociety?.ethnicGroups?.text ?? "Rip")

                                                             .font(Constants.textFont)

                                                             .multilineTextAlignment(.leading)

                                                             .frame(width: UIScreen.main.bounds.size.width-60)

                                                             .foregroundColor(.white)


                                                     }
                                        }
                               }
                        }
                    }
                }
            }
            else {
                Color.DarkBlue
                    .ignoresSafeArea()
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
                    
       
        }
        .task {
            await fetching.getData()
            await fetch.getData(erl:strConversion(name: naming))
            await fe.getData(erl:strConversion2(name: naming))
        }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(naming: "Germany", countryNames: Binding.constant([]))
    }
}
