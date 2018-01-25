//
//  CustomTableViewCell.swift
//  TableViewPractice
//
//  Created by Tia King on 1/24/18.
//  Copyright © 2018 Tia King. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

   
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var landImage: UIImageView!
    @IBOutlet weak var landLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
