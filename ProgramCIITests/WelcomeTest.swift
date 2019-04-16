//
//  WelcomeTest.swift
//  ProgramCII
//
//  Created by Rev on 17/04/19.
//  Copyright © 2019 Paramakshara. All rights reserved.
//

//import XCTest
//
//class WelcomeTest: XCTestCase {
//
//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
//
//}

@testable import ProgramCII

import XCTest

class WelcomeTest: XCTestCase
{
    // MARK: - Subject under test
    
    var sut: Welcome!
    var firstName: String?
    var lastName: String?
    
    // MARK: - Test lifecycle
    
    override func setUp()
    {
        super.setUp()
        setupGreeting()
        firstName = nil
        lastName = nil
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    // MARK: - Test setup
    
    func setupGreeting()
    {
        sut = Welcome()
    }
    
    // MARK: - Test doubles
    
    // MARK: - Tests
    
    func testGenerateShouldReturnNilWithNilFirstAndLastName()
    {
        // Given
        
        // When
        let greeting = sut.generate(firstName: firstName, lastName: lastName)
        
        // Then
        XCTAssertNil(greeting, "generate(firstName:lastName:) should return nil without first and last names")
    }
    
    func testGenerateShouldReturnFriendlyGreetingWithJustFirstName()
    {
        // Given
        firstName = "Raymond"
        
        // When
        let greeting = sut.generate(firstName: firstName, lastName: lastName)
        
        // Then
        XCTAssertEqual(greeting, "Hi Raymond.", "generate(firstName:lastName:) should return a friendly greeting with just the first name")
    }
    
    func testGenerateShouldReturnFormalGreetingWithJustLastName()
    {
        // Given
        lastName = "Law"
        
        // When
        let greeting = sut.generate(firstName: firstName, lastName: lastName)
        
        // Then
        XCTAssertEqual(greeting, "Hello, Mr. Law.", "generate(firstName:lastName:) should return a formal greeting with just the last name")
    }
    
    func testGenerateShouldReturnFullGreetingWithBothFirstAndLastName()
    {
        // Given
        firstName = "Raymond"
        lastName = "Law"
        
        // When
        let greeting = sut.generate(firstName: firstName, lastName: lastName)
        
        // Then
        XCTAssertEqual(greeting, "Good to see you, Mr. Raymond Law.", "generate(firstName:lastName:) should return a full greeting with both first and last names")
    }
}

