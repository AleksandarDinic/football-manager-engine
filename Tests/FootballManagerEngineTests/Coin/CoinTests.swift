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

    private var cointType: FrontBackCoin!
    private var sut: Coin<FrontBackCoin>!

    override func setUp() {
        super.setUp()
        cointType = FrontBackCoin()
        sut = Coin(cointType)
    }

    override func tearDown() {
        cointType = nil
        sut = nil
        super.tearDown()
    }

    func testTossFront() throws {
        // Given

        // When
        let tossedSide = sut.toss(desire: true)

        // Then
        XCTAssertEqual(tossedSide, .front)
    }

    func testTossBack() throws {
        // Given

        // When
        let tossedSide = sut.toss(desire: false)

        // Then
        XCTAssertEqual(tossedSide, .back)
    }

    func testGuessTossingFront() throws {
        // Given

        // When
        let guess = sut.guessTossing(.front, desire: true)

        // Then
        XCTAssert(guess)
    }

    func testGuessTossingBack() throws {
        // Given

        // When
        let guess = sut.guessTossing(.back, desire: true)

        // Then
        XCTAssert(guess)
    }

}
