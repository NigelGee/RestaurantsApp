//
//  RestaurantModel.swift
//  RestaurantsApp
//
//  Created by Nigel Gee on 26/12/2020.
//

import Foundation

struct Restaurant: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let description: String
    let category: String
}

