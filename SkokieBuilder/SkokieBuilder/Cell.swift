//
//  Cell.swift
//  SkokieBuilder
//
//  Created by Josh Byster on 5/30/15.
//  Copyright (c) 2015 Josh Byster. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var rating: UILabel!
    @IBOutlet var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}