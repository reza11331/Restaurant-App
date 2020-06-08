//
//  Order.swift
//  Restaurant
//
//  Created by Reza on 06/06/2020.
//  Copyright © 2020 Reza. All rights reserved.
//

import Foundation


struct Order: Codable {
    var menuItems: [MenuItem]
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
