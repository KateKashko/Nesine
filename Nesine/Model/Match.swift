//
//  Match.swift
//  Nesine
//
//  Created by Kate Kashko on 7.10.2023.
//

import Foundation

struct Match: Decodable {
    let date: String? //date
    let day: String?
    let league: String?
    let someYear: String?
    let time: String? //time
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case date = "D"
        case day = "DAY"
        case league = "LN"
        case someYear = "C"
        case time = "T"
        case name = "N"
    }
}
