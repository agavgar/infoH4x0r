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
        
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .background(Color.black)
            NavigationStack{
                
                VStack {
                    
                    Text("Canal de Noticias H4x0r")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
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
        }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
        }
        
    }
    
}


#Preview {
    ContentView()
}
