//
//  RestaurantRow.swift
//  RestaurantsApp
//
//  Created by Nigel Gee on 26/12/2020.
//

import SwiftUI

struct RestaurantRowView: View {
    let restaurant: Restaurant

    var body: some View {
        HStack {
            Image(restaurant.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
                .shadow(radius: 10)

            VStack(alignment: .leading) {
                Text(restaurant.name)
                    .font(.headline)
                    .bold()

                Text(restaurant.description)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

struct RestaurantRowView_Previews: PreviewProvider {
    static let restaurants = Bundle.main.decode([Restaurant].self, from: "Rest.json")

    static var previews: some View {
        RestaurantRowView(restaurant: restaurants[0])
            .previewLayout(.sizeThatFits)
    }
}
