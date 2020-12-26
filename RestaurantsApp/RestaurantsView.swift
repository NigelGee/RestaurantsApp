//
//  ContentView.swift
//  RestaurantsApp
//
//  Created by Nigel Gee on 26/12/2020.
//

import SwiftUI

struct RestaurantsView: View {
    let restaurants = Bundle.main.decode([Restaurant].self, from: "Rest.json")

    var body: some View {
        List(restaurants) { restaurant in
           RestaurantRowView(restaurant: restaurant)
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView()
    }
}
