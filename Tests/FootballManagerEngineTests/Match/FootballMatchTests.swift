//
//  FootballMatchTests.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import XCTest
@testable import FootballManagerEngine

final class FootballMatchTests: XCTestCase {

    func testCoinTossWinner() {
        // Given
        var sut = FootballMatch(home: "Home", away: "Away", coin: Coin(HeadTailCoin()))

        var coinTossWinner: CoinTossWinner?
        let promise = expectation(description: #function)

        // When
        sut.start(homeGuessCoinSide: .head) { record in
            if let winner = record as? CoinTossWinner {
                coinTossWinner = winner
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(coinTossWinner)
    }

    func testFullTime() {
        // Given
        var sut = FootballMatch(home: "Home", away: "Away", coin: Coin(HeadTailCoin()))

        var fullTime: FullTime?
        let promise = expectation(description: #function)

        // When
        sut.start { record in
            if let time = record as? FullTime {
                fullTime = time
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(fullTime)
    }

}
