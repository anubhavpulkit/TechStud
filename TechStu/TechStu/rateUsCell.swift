//
//  rateUsCell.swift
//  TechStu
//
//  Created by Anubhav Singh on 15/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class rateUsCell: UITableViewCell {

    @IBOutlet weak var RateUsButton: UIButton!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        RateUsButton.layer.borderWidth = 2.0
        RateUsButton.layer.borderColor = UIColor.systemRed as! CGColor
    }

}
