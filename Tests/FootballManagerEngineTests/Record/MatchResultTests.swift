//
//  MatchResultTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class MatchResultTests: XCTestCase {

    func testRecord() {
        // Given
        let time = FootballMatchTime()
        let homeStats = FootballTeamStats(team: FootballTeam(name: "Home", players: []))
        let awayStats = FootballTeamStats(team: FootballTeam(name: "Away", players: []))
        let recordType = RecordType.matchResult
        let givenRecord = "\(time)': \(recordType) \(homeStats.team) \(homeStats.scores) : \(awayStats.team) \(awayStats.scores)"
        let sut = MatchResult(at: time, homeStats: homeStats, awayStats: awayStats)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
