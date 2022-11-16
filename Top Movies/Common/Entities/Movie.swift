//
//  Movie.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation

struct Movie: Codable {
    var id: String
    var original_title: String
    var overview: String
    var poster_path: String?
    
    init(id: String,
         original_title: String,
         overview: String,
         poster_path: String? = nil
    )  {
        self.id = id
        self.original_title = original_title
        self.overview = overview
        self.poster_path = poster_path
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        try self.id = values.decode(String.self, forKey: .id)
        try self.original_title = values.decode(String.self, forKey: .original_title)
        try self.overview = values.decode(String.self, forKey: .overview)
        try self.poster_path = values.decode(String.self, forKey: .poster_path)
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case original_title
        case overview
        case poster_path
    }
}
