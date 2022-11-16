//
//  ApiManager.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 14/11/2022.
//

import Foundation

class ApiManager {
    static let shared = ApiManager()
    private let BASE_URL = "https://api.themoviedb.org/3/movie"
    private let API_KEY = "2b753d0814978acd89388b436ed1b2b3"
    
    private init() {}
    
    func getPopularMovies() -> [Movie] {
        let url = URL(string: "\(BASE_URL)/popular?api_key=\(API_KEY)&language=en-US")!
        var popularMoviesResponse: PopularMoviesResponse = PopularMoviesResponse()
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            let jsonDecoder = JSONDecoder()
            do {
                popularMoviesResponse = try jsonDecoder.decode(PopularMoviesResponse.self, from: data)
            } catch let error as NSError {
                print("Fail: \(error.localizedDescription)")
            } catch {
                print("Fail: \(error)")
            }
            
            print(String(data: data, encoding: .utf8)!)
            print(popularMoviesResponse.results.count)
        }
        
        task.resume()
        return popularMoviesResponse.results
    }
}
