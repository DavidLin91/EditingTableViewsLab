//
//  GroceryList.swift
//  EditingTableViewsLab
//
//  Created by David Lin on 11/21/19.
//  Copyright © 2019 David Lin (Passion Proj). All rights reserved.
//

import Foundation

struct GroceryList {
    let name: String
    let price: Double
    let purchased: Bool
    
    
    static let groceries = [
    GroceryList(name: "Apples", price: 1.50, purchased: true),
    GroceryList(name: "Eggs", price: 1.25, purchased: false),
    GroceryList(name: "Ramen", price: 2.0, purchased: true),
    ]
    
}
