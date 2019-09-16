//
//  MovieViewModel.swift
//  MVVM Demo
//
//  Created by Mohamed Elshaer on 9/14/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class MovieViewModel {
    
    private var theMovie: Movie
    
    init(name: String,year: String) {
        self.theMovie = Movie(movieName: name, movieYear: year)
    }
    
    var movieName: String {
        return theMovie.name
    }
    
    var movieYear: String {
        return theMovie.year
    }
    
    var myFunc: String {
        return "My Movie is \(theMovie.name) and year of it is \(theMovie.year)"
    }
    
}
