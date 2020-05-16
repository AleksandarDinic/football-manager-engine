//
//  FootballMatchTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class FootballMatchTests: XCTestCase {

    var sut: FootballMatch<HeadTailCoin>!

    override func setUp() {
        super.setUp()
        sut = FootballMatch(home: "Home", away: "Away", coin: Coin(HeadTailCoin()))
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testCoinToss() {
        // Given
        var coinToss: CoinToss?
        let promise = expectation(description: #function)

        // When
        sut.start(homeGuessCoinSide: .head) { record in
            if let coinTossRecord = record as? CoinToss {
                coinToss = coinTossRecord
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(coinToss)
    }

    func testStartTime() {
        // Given
        var startTime: StartTime?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let time = record as? StartTime {
                startTime = time
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(startTime)
    }

    func testStartTimeBeforeKickOff() {
        // Given
        var startTime: StartTime?
        var kickOff: KickOff?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let timeRecord = record as? StartTime {
                startTime = timeRecord

            } else if let kickRecord = record as? KickOff,
                kickRecord.kickOffType == .initial,
                startTime != nil {
                kickOff = kickRecord

                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(startTime)
        XCTAssertNotNil(kickOff)
    }

    func testStartTimeBeforeHalfTime() {
        // Given
        var startTime: StartTime?
        var halfTime: HalfTime?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let timeRecord = record as? StartTime {
                startTime = timeRecord

            } else if let timeRecord = record as? HalfTime,
                startTime != nil {
                halfTime = timeRecord

                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(startTime)
        XCTAssertNotNil(halfTime)
    }

    func testHalfTimeBeforeKickOff() {
        // Given
        var halfTime: HalfTime?
        var kickOff: KickOff?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let timeRecord = record as? HalfTime {
                halfTime = timeRecord

            } else if let kickRecord = record as? KickOff,
                kickRecord.kickOffType == .secondHalf,
                halfTime != nil {
                kickOff = kickRecord

                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(halfTime)
        XCTAssertNotNil(kickOff)
    }

    func testFullTime() {
        // Given
        var fullTime: FullTime?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let time = record as? FullTime {
                fullTime = time
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(fullTime)
    }

}
