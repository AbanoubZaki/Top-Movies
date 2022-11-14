//
//  Movie.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation

struct Movie: Codable {
    var id: String
    var title: String
    var overview: String
    var imageUrl: String?
    
    init(id: String,
         title: String,
         overview: String,
         imageUrl: String? = nil
    )  {
        self.id = id
        self.title = title
        self.overview = overview
        self.imageUrl = imageUrl
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        try self.id = values.decode(String.self, forKey: .id)
        try self.title = values.decode(String.self, forKey: .title)
        try self.overview = values.decode(String.self, forKey: .overview)
        try self.imageUrl = values.decode(String.self, forKey: .imageUrl)
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case imageUrl
    }
}
