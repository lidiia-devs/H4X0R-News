//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Lidiia Diachkovskaia on 8/26/25.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]() //makes an empty array of Post you can use. The other just refers to the type.
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData) //Results - type
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
        
    }
}
