//
//  HomeViewController.swift
//  CodingNight
//
//  Created by Morteza Ahmadi on 2019-03-04.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    //MARK: Properties
    var user: User?
    
    //MARK: View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        followersLabel.text = "\(user?.followers ?? 0)"
        followingLabel.text = "\(user?.following ?? 0)"
        nameLabel.text = user?.name
    }
    
}
