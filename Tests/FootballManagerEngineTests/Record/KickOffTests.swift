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
        let time = FootballMatchTime()
        let home = FootballTeam(name: "Home", players: [])
        let recordType = RecordType.kickOff(.initial)
        let givenRecord = "\(time)': \(recordType) - \(home)"
        let sut = KickOff(at: time, type: .initial, team: home)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
