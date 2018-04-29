//
//  MovieManagerTest.swift
//  FilmFestTests
//
//  Created by Thien Le quang on 4/29/18.
//  Copyright © 2018 Author. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieManagerTest: XCTestCase {
  
  var sut: MovieManager! // system under test
  
  let scifiMovie = Movie(title: "Sci-Fi")
  let arthoseMovie = Movie(title: "Arthouse Drama")
  let actionMovie = Movie(title: "Action/Adventure")
  
  override func setUp() {
    super.setUp()
    
    sut = MovieManager()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  // MARK: - Inital Values
  func testInit_MovieToSee_ReturnZero() {
    XCTAssertEqual(sut.moviesToSeeCount, 0)
  }
  
  func testInit_MovieToSeen_ReturnZero() {
    XCTAssertEqual(sut.moviesSeenCount, 0)
  }
  
  // MARK: - Add & Query
  func testAdd_MoviesToSee_ReturnOne() {
    
    sut.addMovie(movie: scifiMovie)
    
    XCTAssertEqual(sut.moviesToSeeCount, 1)
  }
  
  func testQuery_ReturnMovieAtIndex() {
    
    sut.addMovie(movie: arthoseMovie)
    let movieQuery = sut.movieAtIndex(index: 0)
    
    XCTAssertEqual(arthoseMovie.title, movieQuery.title)
  }
  
  // MARK: - Cheking off
  func testCheckOffMovie_UpdateMovieToSeeCount() {
    sut.addMovie(movie: actionMovie)
    sut.checkOffMovieAtIndex(index: 0)
    
    XCTAssertEqual(sut.moviesToSeeCount, 0)
    XCTAssertEqual(sut.moviesSeenCount, 1)
  }
  
  func testCheckOffMovie_RemoveMoviesFromArray() {
    sut.addMovie(movie: scifiMovie)
    sut.addMovie(movie: arthoseMovie)
    
    sut.checkOffMovieAtIndex(index: 0)
    XCTAssertEqual(sut.movieAtIndex(index: 0).title, arthoseMovie.title)
    
    
  }
  
  func testCheckOffMovie_ReturnMovieAtIndex() {
    sut.addMovie(movie: scifiMovie)
    sut.checkOffMovieAtIndex(index: 0)
    
    let movieQueried = sut.checkedOffMovieAtIndex(index: 0)
    XCTAssertEqual(scifiMovie.title, movieQueried.title)
    
  }
  
  func testEquatable_ReturnTrue() {
    let actionMovie1 = Movie(title: "Action")
    let actionMovie2 = Movie(title: "Action")
    
    XCTAssertEqual(actionMovie1, actionMovie2)
  }
  
  func testEquatable_ReturnNotEqualForDifferentTitle() {
    let actionMovie1 = Movie(title: "Action")
    let actionMovie2 = Movie(title: "Action2")
    
    XCTAssertNotEqual(actionMovie1, actionMovie2)
  }
  
  func testEquatable_ReturnNotEqualForDifferentReleaseDate() {
    let actionMovie1 = Movie(title: "Action", releaseDate: "1998")
    let actionMovie2 = Movie(title: "Action2", releaseDate: "2001")
    
    XCTAssertNotEqual(actionMovie1, actionMovie2)
  }
  
  func testClearArrays_ReturnsArrayCountOfZero() {
    sut.addMovie(movie: scifiMovie)
    sut.addMovie(movie: actionMovie)
    sut.checkOffMovieAtIndex(index: 0)
    
    XCTAssertEqual(sut.moviesToSeeCount, 1)
    XCTAssertEqual(sut.moviesSeenCount,1)
    sut.clearArrays()
    
    XCTAssertEqual(sut.moviesToSeeCount, 0)
    XCTAssertEqual(sut.moviesSeenCount, 0)
    
  }
  
  // MARK: - Duplicate
  func testDuplicateMovie_ShouldNotAddToArray() {
    sut.addMovie(movie: scifiMovie)
    sut.addMovie(movie: scifiMovie)
    
    XCTAssertEqual(sut.moviesToSeeCount, 1)
  }
  
  
}
