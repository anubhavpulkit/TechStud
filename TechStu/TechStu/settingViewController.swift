//
//  ViewController.swift
//  TechStu
//
//  Created by Anubhav Singh on 15/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var SettingTable: UITableView!
    
    let label = ["About Us!", "Rate Us!", "Share with friends!"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row > 2 {
            let coustumCell:SettingTableViewCell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as! SettingTableViewCell
            coustumCell.configure(with: "Version: 1.0.0")
            coustumCell.selectionStyle = .none
            return coustumCell
        }
        
        let cell:settingCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! settingCell
        
            cell.cellButtons.setTitle(label[indexPath.row], for: .normal)
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        SettingTable.register(SettingTableViewCell.nib(), forCellReuseIdentifier: SettingTableViewCell.identifier)
    }

}


