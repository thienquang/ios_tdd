//
//  MovieCell.swift
//  FilmFest
//
//  Created by Thien Le quang on 4/30/18.
//  Copyright © 2018 Author. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func configMovieCell(movie: Movie) {
    self.textLabel?.text = movie.title
    self.detailTextLabel?.text = movie.releaseDate
  }
  
  
}
