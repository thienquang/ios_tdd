//
//  ViewController.swift
//  FilmFest
//
//  Created by Author on 1/15/18.
//  Copyright © 2018 Author. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
  @IBOutlet weak var libraryTableView: UITableView!
  @IBOutlet var dataService: MovieLibraryDataService!
  
  var movieManage = MovieManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    self.libraryTableView.dataSource = dataService
    self.libraryTableView.delegate = dataService
    
    dataService.movieManager = movieManage
    dataService.movieManager?.addMovie(movie: Movie(title: "Action", releaseDate: "2018"))
    dataService.movieManager?.addMovie(movie: Movie(title: "Horror", releaseDate: "2014"))
    dataService.movieManager?.addMovie(movie: Movie(title: "Crime", releaseDate: "2018"))
    dataService.movieManager?.addMovie(movie: Movie(title: "Comedy", releaseDate: "2018"))
    dataService.movieManager?.addMovie(movie: Movie(title: "Avenger", releaseDate: "2018"))
    
    libraryTableView.reloadData()
    
    
  }
  
}

