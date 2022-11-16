//
//  PopularMoviesResponse.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 16/11/2022.
//

import Foundation

struct PopularMoviesResponse: Codable {
    var results: [Movie] = []
    var total_pages: Int = 0
    var total_results: Int = 0
    var page: Int = 0
    
    init () {}
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        try self.results = values.decode([Movie].self, forKey: .results)
        try self.total_pages = values.decode(Int.self, forKey: .total_pages)
        try self.total_results = values.decode(Int.self, forKey: .total_results)
        try self.page = values.decode(Int.self, forKey: .page)
    }
    
    private enum CodingKeys: String, CodingKey {
        case results
        case total_pages
        case total_results
        case page
    }
}
