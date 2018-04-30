//
//  LibraryViewControllerTests.swift
//  FilmFestTests
//
//  Created by Thien Le quang on 4/29/18.
//  Copyright © 2018 Author. All rights reserved.
//

import XCTest
@testable import FilmFest

class LibraryViewControllerTests: XCTestCase {
  
  var sut: LibraryViewController!
  
  override func setUp() {
    super.setUp()
    sut = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LibraryViewControllerID") as! LibraryViewController
    _ = sut.view
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  // MARK: - Nil Checks
  func testLibraryVC_TableViewShouldNotBeNil() {
    XCTAssertNotNil(sut.libraryTableView)
  }
  
  // MARK: - DataSource
  func testDataSource_ViewDidLoad_SetsTableViewDataSource() {
    XCTAssertNotNil(sut.libraryTableView.dataSource)
    XCTAssertTrue(sut.libraryTableView.dataSource is MovieLibraryDataService)
  }
  
  // MARK: - Delegate
  func testDelegate_ViewDidLoad_SetsTableViewDelegate() {
    XCTAssertNotNil(sut.libraryTableView.delegate)
    XCTAssertTrue(sut.libraryTableView.delegate is MovieLibraryDataService)
  }
  
  // MARK: - Data Service Assumtion
  func testDataService_ViewDidLoad_SetDataSourceAndDelegateToSameObject() {
    XCTAssertEqual(sut.libraryTableView.dataSource is MovieLibraryDataService, sut.libraryTableView.delegate is MovieLibraryDataService)
  }
  
}
