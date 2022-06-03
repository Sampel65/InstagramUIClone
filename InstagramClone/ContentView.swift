//
//  ContentView.swift
//  InstagramClone
//
//  Created by Sampel on 28/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
           
            TabView{
                VStack{
                Navigation()
                        .padding(.horizontal)
                    storyList()
                        .padding(.leading)
                    ScrollView(showsIndicators:false){
                        ForEach(0..<10){ _ in feed()}
                    }
                    Spacer()
                }
                .navigationBarHidden(true)
                    .tabItem{
                        Image(Asset.home.name)
                    }
                Text("Search")
                    .tabItem{
                        Image(Asset.search.name)
                    
                    }
                Text("Reels")
                    .tabItem{
                        Image(Asset.reels.name)
                    }
                Text("Shopping")
                    .tabItem{
                        Image(Asset.shop.name)
                    }
                Text("profile")
                    .tabItem{
                        Image(Asset.meTab.name)
                    }
    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
