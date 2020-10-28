//
//  AstroInputModel.swift
//  HoroscopeApp
//
//  Created by MCT on 28.10.2020.
//

import Foundation

struct AstroInputModel: Codable {
    
    let day: Int
    let month: Int
    let year: Int
    let hour: Int
    let min: Int
    let lat: Float
    let lon: Float
    let tzone: Float
    
}


/* {
    "day": 5,
    "month": 5,
    "year": 1990,
    "hour": 19,
    "min": 55,
    "lat": 19.2087,
    "lon": 25.8422,
    "tzone": 5.5
} */
