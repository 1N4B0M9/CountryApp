//
//  ContentView.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 12/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fetch = FetchData()

    var body: some View {
       
    
        VStack {
            VStack{
                Text("HI")
                //r.countries[0].geography?.coastline.text
                //fetch.response.geography?.coastline.text
                Text(fetch.response.geography?.coastline.text ?? "No work")
                
            }
            .task {
                await fetch.getData()
                
        }
            
                SearchBar()

            
            
        }
        
     
        
            
         
    }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
