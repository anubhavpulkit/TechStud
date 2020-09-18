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
        
        homeCell.notificationLabel.text = "igno"
        return homeCell
    
    }
    
    
    @IBOutlet weak var topView: UIView!

    
    let myCarousel: iCarousel = {
          let view = iCarousel()
        view.type = .rotary
        return view
                  
      }()
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return 4
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = .gray
        return view
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myCarousel)
        self.myCarousel.dataSource = self
        myCarousel.frame = CGRect(x: 0, y: 60, width: view.frame.size.width, height: 200)
        
    }
    
}
