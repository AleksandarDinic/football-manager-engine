//
//  CoinTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class CoinTests: XCTestCase {

    private var sut: Coin!

    override func setUp() {
        super.setUp()
        sut = Coin()
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
        XCTAssertEqual(tossedSide, .head)
    }

    func testTossBack() throws {
        // Given

        // When
        let tossedSide = sut.toss(desire: false)

        // Then
        XCTAssertEqual(tossedSide, .tail)
    }

    func testGuessTossingFront() throws {
        // Given

        // When
        let guess = sut.guessTossing(.head, desire: true)

        // Then
        XCTAssert(guess)
    }

    func testGuessTossingBack() throws {
        // Given

        // When
        let guess = sut.guessTossing(.tail, desire: true)

        // Then
        XCTAssert(guess)
    }

}
