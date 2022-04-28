//
//  File.swift
//  CasosCOVID
//
//  Created by mac17 on 25/04/22.
//

import Foundation

struct CovidDatos: Decodable {
    let country: String?
    let active: Double?
    let countryInfo: CountryInfo?
}

struct CountryInfo: Decodable {
    let flag: String?
}
