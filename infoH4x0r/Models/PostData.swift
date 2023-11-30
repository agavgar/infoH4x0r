//
//  PostData.swift
//  infoH4x0r
//
//  Created by Alejandro Alberto Gavira García on 30/11/23.
//

import Foundation

struct Results:Decodable{
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    
}
