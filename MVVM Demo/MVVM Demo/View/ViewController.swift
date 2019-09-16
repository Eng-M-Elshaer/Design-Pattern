//
//  ViewController.swift
//  MVVM Demo
//
//  Created by Mohamed Elshaer on 9/14/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var moiveYear: UILabel!
    @IBOutlet weak var movieDes: UILabel!
    
    let viewModel = MovieViewModel(name: "Harry Potter", year: "2005")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateTheView()
    }

    func updateTheView(){
        movieName.text = viewModel.movieName
        moiveYear.text = viewModel.movieYear
        movieDes.text = viewModel.myFunc
    }

}

