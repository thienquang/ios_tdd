//
//  Movie.swift
//  FilmFest
//
//  Created by Thien Le quang on 4/29/18.
//  Copyright © 2018 Author. All rights reserved.
//

import Foundation

struct Movie: Equatable {
  let title: String
  let releaseDate: String?
  
  init(title: String, releaseDate: String? = nil) {
    self.title = title
    self.releaseDate = releaseDate
  }
}

// MARK: - Equatable
func ==(lhs: Movie, rhs: Movie) -> Bool {
  return lhs.title == rhs.title &&
         lhs.releaseDate == rhs.releaseDate
  
}
