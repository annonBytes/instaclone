//
//  ViewController.swift
//  InstaClone
//
//  Created by Ockiya Beinmonyu Daniel on 01.06.22.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        
    }

    private func handleNotAuthenticated() {
        //check Auth status
        if Auth.auth().currentUser == nil {
            //Take me to Login page
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
}

