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

    var homeStats: FootballTeamStats!
    var awayStats: FootballTeamStats!
    var time: FootballMatchTime!

    override func setUp() {
        super.setUp()
        homeStats = FootballTeamStats(team: FootballTeam(name: "Home", players: []))
        awayStats = FootballTeamStats(team: FootballTeam(name: "Away", players: []))
        time = FootballMatchTime()
    }

    override func tearDown() {
        homeStats = nil
        awayStats = nil
        time = nil
        super.tearDown()
    }

    func testRecord() {
        // Given
        let time = FootballMatchTime()
        let recordType = RecordType.matchOutcome
        let matchOutcomeType = MatchOutcome.MatchOutcomeType.drawn
        let givenRecord = "\(time)': \(recordType) \(matchOutcomeType)"
        let sut = MatchOutcome(at: time, homeStats: homeStats, awayStats: awayStats)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

    func testDrawn() {
        // Given
        let matchOutcome = MatchOutcome(at: time, homeStats: homeStats, awayStats: awayStats)

        // When
        let sut = matchOutcome.matchOutcomeType

        // Then
        XCTAssertEqual(sut, .drawn)
    }

    func testWinnerHome() {
        // Given
        homeStats.scoreAGoal()
        let matchOutcome = MatchOutcome(at: time, homeStats: homeStats, awayStats: awayStats)

        // When
        let sut = matchOutcome.matchOutcomeType

        // Then
        XCTAssertEqual(sut, .winner(homeStats.team))
    }

    func testWinnerAway() {
        // Given
        awayStats.scoreAGoal()
        let matchOutcome = MatchOutcome(at: time, homeStats: homeStats, awayStats: awayStats)

        // When
        let sut = matchOutcome.matchOutcomeType

        // Then
        XCTAssertEqual(sut, .winner(awayStats.team))
    }

}
