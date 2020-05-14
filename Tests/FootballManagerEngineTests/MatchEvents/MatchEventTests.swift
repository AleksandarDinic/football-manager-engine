//
//  MatchEventTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class MatchEventTests: XCTestCase {

    func testDrawn() {
        // Given
        let lhs = MatchEvent.end(outcome: .drawn)
        let rhs = MatchEvent.end(outcome: .drawn)

        // Then
        XCTAssertEqual(lhs, rhs)
    }

    func testWinner() {
        // Given
        let lhs = MatchEvent.end(outcome: .winner(team: "Home"))
        let rhs = MatchEvent.end(outcome: .winner(team: "Home"))

        // Then
        XCTAssertEqual(lhs, rhs)
    }

    func testWinnerNotEqual() {
        // Given
        let lhs = MatchEvent.end(outcome: .winner(team: "Home"))
        let rhs = MatchEvent.end(outcome: .winner(team: "Away"))

        // Then
        XCTAssertNotEqual(lhs, rhs)
    }

}
