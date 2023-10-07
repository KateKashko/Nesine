//
//  Mach.swift
//  Nesine
//
//  Created by Kate Kashko on 7.10.2023.
//

import Foundation

Match: Decodable {
    let D: Int //date
    let DAY: String
    let LN: String
    let C: Int
    let T: Int //time
    let N: String
    
    enum CodingKeys: String, CodingKey {
        case date = "D"
        case day = "DAY"
        case league = "LN"
        case someYear = "C"
        case time = "T"
        case name = "N"
    }
}
