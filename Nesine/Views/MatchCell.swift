//
//  MatchCell.swift
//  Nesine
//
//  Created by Kate Kashko on 7.10.2023.
//

import UIKit

class MatchCell: UITableViewCell {
    
    @IBOutlet var date: UILabel!
    @IBOutlet var day: UILabel!
    @IBOutlet var league: UILabel!
    @IBOutlet var someYear: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var name: UILabel!
    
    func configure(with match: Match) {
        date.text = match.date
        day.text = match.day
        league.text = match.league
        someYear.text = match.someYear
        time.text = match.time
        name.text = match.name
        
    }
}

