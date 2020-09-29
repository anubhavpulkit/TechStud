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
        
        
        
        homeCell.Title.text = "Title"
        homeCell.Description.text = "Description"
        homeCell.Date.text = """
            Date
            April 6
            """
        homeCell.logo.image = #imageLiteral(resourceName: "gsoc")
        return homeCell
    
    }
    
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var homeCell: HomeViewCell!
    
    
    let myCarousel: iCarousel = {
        let firstView = iCarousel()
        firstView.type = .rotary
        return firstView
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
