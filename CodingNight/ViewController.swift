//
//  ViewController.swift
//  CodingNight
//
//  Created by Morteza Ahmadi on 2019-03-04.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var user: User?
    @IBOutlet weak var usernameTextField: UITextField!
    @IBAction func goButton(_ sender: Any) {
       let username = usernameTextField.text ?? ""
        fetchData(for: username) { (user) in
            self.user = user
            DispatchQueue.main.async {
               self.performSegue(withIdentifier: "loginToHome", sender: self)
            }
        }
    }
    
    private func fetchData(for username: String, completionHandler: @escaping (User) -> Void) {
        let url = URL(string: "https://api.github.com/users/\(username)")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else { return }
            do {
                let user = try JSONDecoder().decode(User.self, from: data)
                completionHandler(user)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToHome" {
            if let homeViewController = segue.destination as? HomeViewController {
                homeViewController.user = self.user
            }
        }
    }
}

