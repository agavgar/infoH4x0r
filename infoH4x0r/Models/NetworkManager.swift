//
//  NetworkManager.swift
//  infoH4x0r
//
//  Created by Alejandro Alberto Gavira García on 30/11/23.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData(){
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data,response,error) in
                
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            self.posts = results.hits
                        }catch{
                            print(error)
                        }
                        
                    }
                    
                }else{
                    print(error!)
                }
            }
            task.resume()
        }
    }
}
