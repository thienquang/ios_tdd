//
//  MovieManager.swift
//  FilmFest
//
//  Created by Thien Le quang on 4/29/18.
//  Copyright © 2018 Author. All rights reserved.
//

import Foundation

class MovieManager {
  var moviesToSeeCount: Int {
    return moviesToSeeArray.count
  }
  var moviesSeenCount: Int {
    return moviesSeenArray.count
  }
  
  private var moviesToSeeArray: [Movie] = [Movie]()
  private var moviesSeenArray = [Movie]()
  
  func addMovie(movie: Movie) {
    if !moviesToSeeArray.contains(movie) {
      moviesToSeeArray.append(movie)
      }
  }
  
  func movieAtIndex(index: Int) -> Movie {
    return moviesToSeeArray[index]
  }
  
  func checkOffMovieAtIndex(index: Int) {
    guard index < moviesToSeeCount else { return }
    let checkMovie = moviesToSeeArray.remove(at: index)
    moviesSeenArray.append(checkMovie)
    
  }
  func checkedOffMovieAtIndex(index: Int) -> Movie {
    return moviesSeenArray[index]
  }
  
  func clearArrays() {
    moviesSeenArray.removeAll()
    moviesToSeeArray.removeAll()
  }
}
