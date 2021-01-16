//
//  versionCell.swift
//  TechStu
//
//  Created by Anubhav Singh on 15/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class settingCell: UITableViewCell {

    
    @IBOutlet weak var cellButtons: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        cellButtons.layer.borderWidth = 2.0
        cellButtons.layer.cornerRadius = 10
        
    }

}
