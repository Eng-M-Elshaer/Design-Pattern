//
//  ViewController.swift
//  Observer & Notification Pattern
//
//  Created by Mohamed Elshaer on 9/21/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectLable: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    let male = Notification.Name(rawValue: maleType)
    let female = Notification.Name(rawValue: femaleType)
    
    // for deallocte it form the memory.
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObserver()
    }
    
    func createObserver(){
        
        // Male.
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateBackgroundColor(notif:)), name: male, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateSelectLabel(notif:)), name: male, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTypeLabel(notif:)), name: male, object: nil)

        // Female.
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateBackgroundColor(notif:)), name: female, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateSelectLabel(notif:)), name: female, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTypeLabel(notif:)), name: female, object: nil)

        
        
    }
    
    
    @objc func updateSelectLabel(notif:NSNotification){
        selectLable.text = "You Have Select"
    }
    
    @objc func updateTypeLabel(notif:NSNotification){
        let isMale = notif.name == male
        let label = isMale ? "A Male" : "A Female"
        typeLabel.text = label
    }
    
    @objc func updateBackgroundColor(notif:NSNotification){
        let isMale = notif.name == male
        let color = isMale ? UIColor.blue : UIColor.red
        view.backgroundColor = color
    }

    @IBAction func goForSelect(_ sender: Any) {
        let select = storyboard?.instantiateViewController(withIdentifier: "Select") as! SelectViewController
        present(select, animated: true, completion: nil)
    }
    
}

