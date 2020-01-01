//
//  SelectViewController.swift
//  Observer & Notification Pattern
//
//  Created by Mohamed Elshaer on 9/21/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func male(_ sender: Any) {
        let name = Notification.Name(rawValue: maleType )
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func famale(_ sender: Any) {
        let name = Notification.Name(rawValue: femaleType )
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
}
