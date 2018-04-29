//
//  MovieStructTests.swift
//  FilmFestTests
//
//  Created by Thien Le quang on 4/29/18.
//  Copyright © 2018 Author. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieStructTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testInit_MovieWithTitle() {
    let testMovie = Movie(title: "Generic Blockbuster")
    XCTAssertNotNil(testMovie)
    XCTAssertEqual("Generic Blockbuster", testMovie.title)
  }
  
  func textInit_SetMovieTitleAndReleaseDate() {
    let testMovie = Movie(title: "Romantic Comedy", releaseDate: "1987")
    XCTAssertNotNil(testMovie)
    XCTAssertEqual("1987", testMovie.releaseDate)
  }
}
