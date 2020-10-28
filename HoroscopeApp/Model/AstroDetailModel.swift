//
//  AstroDetailModel.swift
//  HoroscopeApp
//
//  Created by MCT on 28.10.2020.
//

import Foundation

struct AstroDetailModel:Codable {
    let ascendant: String
    let ascendantLord: String
    let varna: String
    let vashya: String
    let yoni: String
    let gan: String
    let nadi: String
    let signLord: String
    let sign: String
    let naksahtra: String
    let naksahtraLord: String
    let charan: Int
    let yog: String
    let karan: String
    let tihti: String
    let yunja: String
    let tatva: String
    let nameAlphabet: String
    let paya: String
    
    enum CodingKeys: String, CodingKey {
        case ascendant = "ascendant"
        case ascendantLord = "ascendant_lord"
        case varna = "Varna"
        case vashya = "Vashya"
        case yoni = "Yoni"
        case gan = "Gan"
        case nadi = "Nadi"
        case signLord = "SignLord"
        case sign = "sign"
        case naksahtra = "Naksahtra"
        case naksahtraLord = "NaksahtraLord"
        case charan = "Charan"
        case yog = "Yog"
        case karan = "Karan"
        case tihti = "Tithi"
        case yunja = "yunja"
        case tatva = "tatva"
        case nameAlphabet = "name_alphabet"
        case paya = "paya"
    }
}


/*
 {
     "ascendant": "Virgo",
     "ascendant_lord": "Mercury",
     "Varna": "Vaishya",
     "Vashya": "Maanav",
     "Yoni": "Gau",
     "Gan": "Manushya",
     "Nadi": "Adi",
     "SignLord": "Mercury",
     "sign": "Virgo",
     "Naksahtra": "Uttra Phalguni",
     "NaksahtraLord": "Sun",
     "Charan": 3,
     "Yog": "Harshan",
     "Karan": "Bava",
     "Tithi": "Shukla Dwadashi",
     "yunja": "Madhya",
     "tatva": "Earth",
     "name_alphabet": "Pa",
     "paya": "Silver"
 }
 */
