//
//  HomeViewController.swift
//  TechStu
//
//  Created by Anubhav Singh on 18/09/20.
//  Copyright © 2020 Swify. All rights reserved.
//

import iCarousel
import UIKit

class HomeViewController: UIViewController, iCarouselDataSource, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let homeCell:HomeViewCell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeViewCell
        
        homeCell.Title.text = "Google Summer of Code"
        homeCell.Description.text = "a global program focused on introducing students to open source software development."
        homeCell.logo.image = #imageLiteral(resourceName: "gsoc")
        
        // For animated table view cell
        if let lastIndexPath = tableView.indexPathsForVisibleRows?.last{
            if lastIndexPath.row <= indexPath.row{
                homeCell.center.y = homeCell.center.y + homeCell.frame.height / 2
                homeCell.alpha = 0
                UIView.animate(withDuration: 0.6, delay: 0.05*Double(indexPath.row), options: [.curveEaseInOut], animations: {
                    homeCell.center.y = homeCell.center.y - homeCell.frame.height / 2
                    homeCell.alpha = 1
                }, completion: nil)
            }
        }
        
        
        return homeCell
    
    }
    
    
    @IBOutlet weak var topView: UIView!
    
    let myCarousel: iCarousel = {
        let firstView = iCarousel()
        firstView.type = .rotary
        return firstView
    }()
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return 3
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = .gray
        let imageview = UIImageView(frame: view.bounds)
        view.addSubview(imageview)
        imageview.contentMode = .scaleAspectFill
        imageview.image = UIImage(named: "dog\(index+1)")
        
        let description = UILabel(frame: view.bounds)
        view.addSubview(description)
        description.translatesAutoresizingMaskIntoConstraints = false
        description.heightAnchor.constraint(equalToConstant: 50).isActive = true
        let des = [ "Anubhav", "Singh", "iOS"]
        description.text = des[index]
        description.textColor = UIColor.white
        description.textAlignment = .center
        
        // Constraints for description label
        view.centerXAnchor.constraint(equalTo: description.centerXAnchor).isActive = true
        description.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        description.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -10).isActive = true
        description.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        
        return view
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.addSubview(myCarousel)
        self.myCarousel.dataSource = self
        
//        myCarousel.frame = CGRect(x: 0, y: 30, width: view.frame.size.width, height: 200)
        myCarousel.translatesAutoresizingMaskIntoConstraints = false
        myCarousel.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true
        myCarousel.leftAnchor.constraint(equalTo: topView.leftAnchor).isActive = true
        myCarousel.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        myCarousel.rightAnchor.constraint(equalTo: topView.rightAnchor).isActive = true
        myCarousel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myCarousel.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
