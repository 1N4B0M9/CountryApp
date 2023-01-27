//
//  ContentView.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 12/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fetch = FetchData()
    @State var page : Bool = false
    var body: some View {
       /* if page == false {
            Button{
              page = true
            } label : {
                Image("search")
                    .resizable()
                    .frame(width: 20, height: 20)

            }
            
                .offset(x: UIScreen.main.bounds.size.width-520, y: UIScreen.main.bounds.size.height-1175)
                .task {
                    await fetch.getLocalData()
                    
            }
        }
        else {
            Button{
              page = false
            } label : {
                Text("Back")
            }
           // .offset(x: UIScreen.main.bounds.size.width-520, y: UIScreen.main.bounds.size.height-1175)
            */
        VStack{
            
            SearchBar()
            
        }
        .task {
            await fetch.getLocalData()
                
        }
        
        
            
            

            
            
        
        
        
            
         
    }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
