//
//  HomeViewController.swift
//  CodingNight
//
//  Created by Morteza Ahmadi on 2019-03-04.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var user: User?
    override func viewDidLoad() {
        super.viewDidLoad()
        followersLabel.text = "\(user?.followers ?? 0)"
        followingLabel.text = "\(user?.following ?? 0)"
        nameLabel.text = user?.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
