//
//  StartTimeTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class StartTimeTests: XCTestCase {

    func testRecord() {
        // Given
        let time = FootballMatchTime()
        let recordType = RecordType.time(.startTime)
        let givenRecord = "\(time)': \(recordType)"
        let sut = TimeRecord(at: time, type: .startTime)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
