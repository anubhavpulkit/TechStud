//
//  TechViewController.swift
//  TechStu
//
//  Created by Anubhav Singh on 05/10/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

class TechViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TechtabelView: UITableView!
    @IBOutlet weak var TechCell: TechTableViewCell!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let techCell:TechTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TechCell", for: indexPath) as! TechTableViewCell
        techCell.SubtitleLabel.text = "beta version"
        techCell.titleLabel.text = "beta Title"
        
        techCell.logoPic.image = #imageLiteral(resourceName: "dog2")
        
        return techCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    


}
