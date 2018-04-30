//
//  MovieCellTests.swift
//  FilmFestTests
//
//  Created by Thien Le quang on 4/30/18.
//  Copyright © 2018 Author. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieCellTests: XCTestCase {
  
  var tableView: UITableView!
  var mockDataSource: MockCellDataSource!
  
  override func setUp() {
    super.setUp()
    
    let libraryVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LibraryViewControllerID") as! LibraryViewController
    _ = libraryVC.view
    
    tableView = libraryVC.libraryTableView
    mockDataSource = MockCellDataSource()
    tableView.dataSource = mockDataSource
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testCell_Config_ShouldSetLabelsToMovieData() {
    let cell = tableView.dequeueReusableCell(withIdentifier: "movieCellID", for: IndexPath(row: 0, section: 0)) as! MovieCell
//      .cellForRow(at: IndexPath(row: 0, section: 0)) as! MovieCell
    cell.configMovieCell(movie: Movie(title: "Indie Commedy", releaseDate: "2018"))
    
    XCTAssertEqual(cell.textLabel?.text, "Indie Commedy")
    XCTAssertEqual(cell.detailTextLabel?.text, "2018")
  }
  
}
