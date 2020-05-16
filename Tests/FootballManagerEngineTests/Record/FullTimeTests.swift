//
//  FullTimeTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class FullTimeTests: XCTestCase {

    func testRecord() {
        // Given
        let time = 0
        let recordType = RecordType.fullTime
        let givenRecord = "\(time)': \(recordType)"
        let sut = FullTime(time: time)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
