//
//  ViewController.swift
//  NotificationCenter-PushData
//
//  Created by macos on 29/07/20.
//  Copyright © 2020 macos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var logoImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.facebook), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.twitter), name: .twitter, object: nil)
        // Do any additional setup after loading the view.
    }


    @objc func facebook(notification:Notification)
    {
        let SV = notification.object as! SecondViewController
        
        logoImg.image = #imageLiteral(resourceName: "fb_icon_325x325")
        lblTitle.text = SV.txtFacebook
    }
    @objc func twitter(notification:Notification)
    {
        let SV = notification.object as! SecondViewController
        logoImg.image = #imageLiteral(resourceName: "6743064_preview.png")
        lblTitle.text = SV.txtTwitter
    }
    
    @IBAction func next_btn(_ sender: Any)
    {
        let nav = self.storyboard?.instantiateViewController(identifier: "SecondViewController")
        self.navigationController?.pushViewController(nav!, animated: true)
    }
    
}
extension Notification.Name
{
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}
