//
//  TableViewCell.swift
//  TechStu
//
//  Created by Anubhav Singh on 05/10/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class TechTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoPic: UIImageView!
    @IBOutlet weak var SubtitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
