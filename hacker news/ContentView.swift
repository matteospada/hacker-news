//
//  ContentView.swift
//  hacker news
//
//  Created by Matteo Spada on 11/07/2020.
//  Copyright © 2020 Matteo Spada. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4CK3R N3WS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone XS")
    }
}
