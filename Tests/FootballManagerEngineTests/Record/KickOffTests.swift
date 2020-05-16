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
        let recordType = RecordType.kickOff
        let kickOffType = KickOff.KickOffType.initial
        let givenRecord = "\(time)': \(recordType) \(kickOffType) - \(home)"
        let sut = KickOff(time: time, kickOffType: kickOffType, team: home)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
