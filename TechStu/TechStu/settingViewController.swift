//
//  ViewController.swift
//  TechStu
//
//  Created by Anubhav Singh on 15/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let label = ["Version: ", "Share with friends!", "About Us!", "Rate Us!"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:versionCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! versionCell
        
            cell.cellButtons.setTitle(label[indexPath.row], for: .normal)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

