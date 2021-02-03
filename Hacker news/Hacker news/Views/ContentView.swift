//
//  ContentView.swift
//  Hacker news
//
//  Created by Aditya kumar on 28/04/20.
//  Copyright © 2020 Aditya kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager ()
    
    var body: some View {
        
        NavigationView{
            
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
             //  HStack {
             //       Text(String(post.points))
             //       Text(post.title)
             //   }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchdata()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

