//
//  HalfTimeTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class HalfTimeTests: XCTestCase {

    func testRecord() {
        // Given
        let time = FootballMatchTime()
        let recordType = RecordType.time(.halfTime)
        let givenRecord = "\(time)': \(recordType)"
        let sut = TimeRecord(at: time, type: .halfTime)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
