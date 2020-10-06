//
//  SettingTableViewCell.swift
//  TechStu
//
//  Created by Anubhav Singh on 16/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    static let identifier = "SettingTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "SettingTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String){
        versionLabel.text = title
    }
    
    @IBOutlet var versionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
