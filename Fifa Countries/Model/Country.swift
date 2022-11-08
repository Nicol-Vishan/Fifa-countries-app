//
//  Country.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 04/11/22.
//

import Foundation

// MARK: - Welcome
struct Country: Codable {
    let name: Name
    let tld: [String]?
    let cca2, ccn3, cca3: String?
    let independent: Bool?
    let status: String
    let unMember: Bool
    let currencies: Currencies?
    let idd: Idd
    let capital, altSpellings: [String]?
    let region: String
    let subregion: String?
    let languages: Languages?
    let translations: [String: Translation]
    let latlng: [Double]
    let landlocked: Bool
    let area: Double?
    let demonyms: Demonyms?
    let flag: String
    let maps: Maps
    let population: Int
    let fifa: String?
    let car: Car
    let timezones, continents: [String]
    let flags, coatOfArms: CoatOfArms
    let startOfWeek: String
    let capitalInfo: CapitalInfo
    let postalCode: PostalCode?
}

// MARK: - CapitalInfo
struct CapitalInfo: Codable {
    let latlng: [Double]?
}

// MARK: - Car
struct Car: Codable {
    let signs: [String]?
    let side: String
}

// MARK: - CoatOfArms
struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

// MARK: - Currencies
struct Currencies: Codable {
    let bbd: Bbd?

    enum CodingKeys: String, CodingKey {
        case bbd = "BBD"
    }
}

// MARK: - Bbd
struct Bbd: Codable {
    let name, symbol: String
}

// MARK: - Demonyms
struct Demonyms: Codable {
    let eng, fra: Eng?
}

// MARK: - Eng
struct Eng: Codable {
    let f, m: String
}

// MARK: - Idd
struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

// MARK: - Languages
struct Languages: Codable {
    let eng: String?
}

// MARK: - Maps
struct Maps: Codable {
    let googleMaps, openStreetMaps: String
}

// MARK: - Name
struct Name: Codable {
    let common, official: String
    let nativeName: NativeName?
}

// MARK: - NativeName
struct NativeName: Codable {
    let eng: Translation?
}

// MARK: - Translation
struct Translation: Codable {
    let official, common: String
}

// MARK: - PostalCode
struct PostalCode: Codable {
    let format, regex: String?
}

