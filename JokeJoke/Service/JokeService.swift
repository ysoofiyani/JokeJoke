//
//  JokeService.swift
//  JokeJoke
//
//  Created by Yasser on 2020-10-24.
//

import Foundation

struct JokeService {
    
    private var dataTask: URLSessionDataTask?
    
    mutating func getJokes(completion: @escaping (Result<[JokeModel], Error>) -> Void) {
        
        guard let url = URL(string: Urls().jokeUrl) else { return }
        
        dataTask = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            if let err = error {
                completion(.failure(err))
                return
            }
            
            guard let _ = response as? HTTPURLResponse, let date = data else {
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let joke = try decoder.decode([JokeModel].self, from: date)
                
                DispatchQueue.main.async {
                    completion(.success(joke))
                }
                
            }catch let jsonError{
                completion(.failure(jsonError))
            }
            
        }
        
        dataTask?.resume()
        
    }
}
