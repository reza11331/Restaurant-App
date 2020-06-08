//
//  MenuItem.swift
//  Restaurant
//
//  Created by Reza on 06/06/2020.
//  Copyright © 2020 Reza. All rights reserved.
//

import Foundation
struct MenuItem: Codable {
    
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var imageURL: URL
    var category: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case detailText = "description"
        case price
        case imageURL = "image_url"
        case category

    }
    
}

struct MenuItems: Codable {
    let items: [MenuItem]
}



