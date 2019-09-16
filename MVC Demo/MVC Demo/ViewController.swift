//
//  ViewController.swift
//  MVC Demo
//
//  Created by Mohamed Elshaer on 9/14/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieDes: UILabel!
    
    let theMovie =  Movie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateTheView()
    }

    func updateTheView(){
        
        
        theMovie.name = "Harry Potter"
        theMovie.year = "2005"
        
        movieName.text = theMovie.name
        movieYear.text = theMovie.year
        movieDes.text = "My Movie is \(theMovie.name ?? "") and it is year \(theMovie.year ?? "")"
    }
}

