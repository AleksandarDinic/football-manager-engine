//
//  MatchOutcomeTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 14/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class MatchOutcomeTests: XCTestCase {

    func testDrawn() {
        // Given
        let matchResult = MatchResult(
            time: 0,
            home: "Home",
            homeGoals: 0,
            away: "Away",
            awayGoals: 0
        )

        // When
        let sut = MatchOutcome(matchResult: matchResult)

        // Then
        XCTAssertEqual(sut, MatchOutcome.drawn)
    }

    func testWinnerHome() {
        // Given
        let matchResult = MatchResult(
            time: 0,
            home: "Home",
            homeGoals: 1,
            away: "Away",
            awayGoals: 0
        )

        // When
        let sut = MatchOutcome(matchResult: matchResult)

        // Then
        XCTAssertEqual(sut, MatchOutcome.winner(matchResult.home))
    }

    func testWinnerAway() {
        // Given
        let matchResult = MatchResult(
            time: 0,
            home: "Home",
            homeGoals: 0,
            away: "Away",
            awayGoals: 1
        )

        // When
        let sut = MatchOutcome(matchResult: matchResult)

        // Then
        XCTAssertEqual(sut, MatchOutcome.winner(matchResult.away))
    }

}
