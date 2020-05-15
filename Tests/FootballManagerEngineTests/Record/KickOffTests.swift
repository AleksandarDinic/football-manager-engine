//
//  KickOffTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class KickOffTests: XCTestCase {

    func testRecord() {
        // Given
        let time = 0
        let home = "Home"
        let homeGoals = 0
        let away = "Away"
        let awayGoals = 0
        let matchResult = MatchResult(
            time: time,
            home: home,
            homeGoals: homeGoals,
            away: away,
            awayGoals: awayGoals
        )
        let recordType = RecordType.kickOff
        let kickOffType = KickOff.KickOffType.initial
        let givenRecord = "\(time)': \(recordType) \(kickOffType) - \(home)"
        let sut = KickOff(
            time: time,
            team: home,
            kickOffType: kickOffType,
            matchResult: matchResult
        )

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
