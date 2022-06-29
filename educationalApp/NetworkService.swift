//
//  NetworkService.swift
//  educationalApp
//
//  Created by Swift Learning on 29.06.2022.
//

import Foundation

protocol Networkable {
    func fetchPosts()
}

final class NetworkService {
    
}

extension NetworkService: Networkable {
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, URLResponse, error in
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let posts = try decoder.decode([PostModel].self, from: data)
            } catch {
                print(error, error.localizedDescription)
                return
            }
        }
        task.resume()
    }
}
