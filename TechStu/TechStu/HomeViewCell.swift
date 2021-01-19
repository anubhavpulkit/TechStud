//
//  HomeViewCell.swift
//  TechStu
//
//  Created by Anubhav Singh on 19/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class HomeViewCell: UITableViewCell {

    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var logo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        logo.clipsToBounds = true
        logo.layer.cornerRadius = 10
        Description.textColor = UIColor.gray
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
        contentView.layer.cornerRadius = 8
        contentView.backgroundColor = .systemGray6

    }
}

