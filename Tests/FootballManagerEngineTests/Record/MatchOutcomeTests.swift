//
//  MatchOutcomeTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class MatchOutcomeTests: XCTestCase {

    var home: String!
    var homeGoals: Int!
    var away: String!
    var awayGoals: Int!

    override func setUp() {
        super.setUp()
        home = "Home"
        homeGoals = 0
        away = "Away"
        awayGoals = 0
    }

    override func tearDown() {
        home = nil
        homeGoals = nil
        away = nil
        awayGoals = nil
        super.tearDown()
    }

    func testRecord() {
        // Given
        let time = 0
        let matchResult = MatchResult(
            time: time,
            home: home,
            homeGoals: homeGoals,
            away: away,
            awayGoals: awayGoals
        )
        let recordType = RecordType.matchOutcome
        let matchOutcomeType = MatchOutcome.MatchOutcomeType.drawn
        let givenRecord = "\(time)': \(recordType) \(matchOutcomeType)"
        let sut = MatchOutcome(time: time, matchResult: matchResult)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

    func testDrawn() {
        // Given
        let time = 0
        let matchResult = MatchResult(
            time: time,
            home: home,
            homeGoals: homeGoals,
            away: away,
            awayGoals: awayGoals
        )
        let matchOutcome = MatchOutcome(time: time, matchResult: matchResult)

        // When
        let sut = matchOutcome.matchOutcomeType

        // Then
        XCTAssertEqual(sut, .drawn)
    }

    func testWinnerHome() {
        // Given
        let time = 0
        homeGoals = 1
        let matchResult = MatchResult(
            time: time,
            home: home,
            homeGoals: homeGoals,
            away: away,
            awayGoals: awayGoals
        )
        let matchOutcome = MatchOutcome(time: time, matchResult: matchResult)

        // When
        let sut = matchOutcome.matchOutcomeType

        // Then
        XCTAssertEqual(sut, .winner(home))
    }

    func testWinnerAway() {
        // Given
        let time = 0
        awayGoals = 1
        let matchResult = MatchResult(
            time: time,
            home: home,
            homeGoals: homeGoals,
            away: away,
            awayGoals: awayGoals
        )
        let matchOutcome = MatchOutcome(time: time, matchResult: matchResult)

        // When
        let sut = matchOutcome.matchOutcomeType

        // Then
        XCTAssertEqual(sut, .winner(away))
    }

}
