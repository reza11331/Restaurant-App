//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Reza on 06/06/2020.
//  Copyright © 2020 Reza. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
