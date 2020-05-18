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

    var sut: FootballMatch!

    override func setUp() {
        super.setUp()
        let matchInfo = FootballMatchInfo(
            homeStats: FootballTeamStats(team: FootballTeam(name: "Home", players: [])),
            awayStats: FootballTeamStats(team: FootballTeam(name: "Away", players: []))
        )
        sut = FootballMatch(info: matchInfo)
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
        sut.start(homeGuess: .head) { record in
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
        var startTime: TimeRecord?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let time = record as? TimeRecord,
                time.recordType == .time(.startTime) {
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
        var startTime: TimeRecord?
        var kickOff: KickOff?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let timeRecord = record as? TimeRecord,
                timeRecord.recordType == .time(.startTime) {
                startTime = timeRecord

            } else if let kickRecord = record as? KickOff,
                kickRecord.recordType == .kickOff(.initial),
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
        var startTime: TimeRecord?
        var halfTime: TimeRecord?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let timeRecord = record as? TimeRecord,
                timeRecord.recordType == .time(.startTime) {
                startTime = timeRecord

            } else if let timeRecord = record as? TimeRecord,
                timeRecord.recordType == .time(.halfTime),
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
        var halfTime: TimeRecord?
        var kickOff: KickOff?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let timeRecord = record as? TimeRecord,
                timeRecord.recordType == .time(.halfTime) {
                halfTime = timeRecord

            } else if let kickRecord = record as? KickOff,
                kickRecord.recordType == .kickOff(.secondHalf),
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
        var fullTime: TimeRecord?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let time = record as? TimeRecord,
                time.recordType == .time(.fullTime) {
                fullTime = time
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(fullTime)
    }

}
