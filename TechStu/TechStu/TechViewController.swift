//
//  TechViewController.swift
//  TechStu
//
//  Created by Anubhav Singh on 05/10/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import UIKit

struct ProductData {
    let title:String?
    let link:String?
    let img:UIImage?
}

struct ServiceData {
    let title:String?
    let link:String?
    let img:UIImage?
}


class TechViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
      
    @IBOutlet weak var tableView: UITableView!
    var pdData:[ProductData] = []
    var serData:[ServiceData] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        
        if segmentController.selectedSegmentIndex == 0 {
            count = pdData.count
        }
    else if segmentController.selectedSegmentIndex == 1{
        count = serData.count
        }
        
     return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TechTableViewCell
        
        cell.selectionStyle = .none
        
        if segmentController.selectedSegmentIndex == 0{
            cell.companyTitle.text = pdData[indexPath.row].title
            cell.hrfText.text = pdData[indexPath.row].link
            cell.logoImage.image = pdData[indexPath.row].img
        }
        else if segmentController.selectedSegmentIndex == 1{
            cell.companyTitle.text = serData[indexPath.row].title
            cell.hrfText.text = serData[indexPath.row].link
            cell.logoImage.image = serData[indexPath.row].img
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell!.contentView.backgroundColor = UIColor.orange
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (_) in
               cell!.contentView.backgroundColor = .clear
            }
    }
    

    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pdData = [
        ProductData(title: "Amazon", link:"https://www.amazon.jobs/en/" , img: #imageLiteral(resourceName: "dog1")),
            ProductData(title: "anu", link: "this", img: #imageLiteral(resourceName: "icons8-home-52")),
            ProductData(title: "singh", link: "do", img: #imageLiteral(resourceName: "dog2"))
        ]
        serData = [
            ServiceData(title: "ser", link: "sur", img: #imageLiteral(resourceName: "dog1")),
            ServiceData(title: "given", link: "what", img: #imageLiteral(resourceName: "gsoc")),
            ServiceData(title: "yes ", link: "do", img: #imageLiteral(resourceName: "icons8-gear-30 blue"))
        ]
        
       // segmentController.st
        
    }
    
    @IBAction func Segment(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
    
    

}
