//
//  SecondViewController.swift
//  NotificationCenter-PushData
//
//  Created by macos on 30/07/20.
//  Copyright © 2020 macos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var txtFacebook = "stay connected with friends and family"
    var txtTwitter = "The best way to discover what's new in your world."
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func facebookTapped(_ sender: Any)
    {
        NotificationCenter.default.post(name: .facebook, object: self)
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: self)
    }
    

}
