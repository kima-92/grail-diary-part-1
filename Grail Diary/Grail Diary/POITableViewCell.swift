//
//  POITableViewCell.swift
//  Grail Diary
//
//  Created by macbook on 9/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class POITableViewCell: UITableViewCell {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cluesCountLabel: UILabel!
    
    
    var poi: POI? {
        didSet {
            updateViews()
        }
    }
    
    
    // private func updateViews
    private func updateViews() {
        guard let poi = poi else { return }
        
        locationLabel.text = poi.location
        countryLabel.text = poi.country
        cluesCountLabel.text = "\(poi.clues.count) clues"
    }

}
