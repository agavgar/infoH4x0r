//
//  ContentView.swift
//  infoH4x0r
//
//  Created by Alejandro Alberto Gavira García on 29/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationStack{
            VStack {
                Text("Noticias Hacker")
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                    
                }
            }
        }.onAppear {
                self.networkManager.fetchData()
            }
        
    }
    
}


#Preview {
    ContentView()
}
