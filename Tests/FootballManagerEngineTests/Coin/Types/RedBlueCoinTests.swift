//
//  RedBlueCoinTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class RedBlueCoinTests: XCTestCase {

    private var sut: RedBlueCoin!

    override func setUp() {
        super.setUp()
        sut = RedBlueCoin()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testTossFront() throws {
        // Given

        // When
        let tossedSide = sut.toss(desire: true)

        // Then
        XCTAssertEqual(tossedSide, .red)
    }

    func testTossBack() throws {
        // Given

        // When
        let tossedSide = sut.toss(desire: false)

        // Then
        XCTAssertEqual(tossedSide, .blue)
    }

    func testGuessTossingFront() throws {
        // Given

        // When
        let guess = sut.guessTossing(.red, desire: true)

        // Then
        XCTAssert(guess)
    }

    func testGuessTossingBack() throws {
        // Given

        // When
        let guess = sut.guessTossing(.blue, desire: true)

        // Then
        XCTAssert(guess)
    }

}

