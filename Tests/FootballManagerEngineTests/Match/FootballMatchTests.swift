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

    func testExample() {
        // Given
        let sut = FootballMatch(home: "Home", away: "Away")

        var endEvent: MatchEvent?
        let promise = expectation(description: #function)

        // When
        sut.start { event in
            if case MatchEvent.end = event {
                endEvent = event
                promise.fulfill()
            }
        }

        // Then
        waitForExpectations(timeout: 5)

        XCTAssertNotNil(endEvent)
    }

}
