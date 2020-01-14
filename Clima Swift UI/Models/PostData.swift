//
//  PostData.swift
//  Clima Swift UI
//
//  Created by Ian Mabon on 12/3/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import Foundation


struct Weather: Decodable {
    let main: Main
    let name: String
    let weather: [WeatherData]
    
}
struct Main: Decodable {
    let temp: Double
    }

struct WeatherData: Decodable {
    let description: String
    let id: Int
}

