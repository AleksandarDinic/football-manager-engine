//
//  CoinTossWinnerTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class CoinTossWinnerTests: XCTestCase {

    func testRecord() {
        // Given
        let time = 0
        let home = "Home"
        let recordType = RecordType.coinTossWinner
        let givenRecord = "\(time)': \(recordType) \(home)"
        let sut = CoinTossWinner(time: time, winner: home)

        // When
        let record = sut.record

        // Then
        XCTAssertEqual(record, givenRecord)
    }

}
