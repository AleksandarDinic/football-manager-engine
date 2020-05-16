//
//  FootballMatch.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballMatch: Match {

    public var info: FootballMatchInfo

    public init(info: FootballMatchInfo) {
        self.info = info
    }

    public mutating func start(
        homeGuess coinSide: CoinSide,
        homeDecision: CoinGameDecision = .kickOff,
        awayDecision: CoinGameDecision = .kickOff,
        onRecord record: @escaping (Recordable) -> Void
    ) {
        info.playCoinToss(homeGuess: coinSide, homeDecision: homeDecision, awayDecision: awayDecision)
        record(info.make(.coinToss))
        start(onRecord: record)
    }

    public mutating func start(onRecord record: @escaping (Recordable) -> Void) {
        startTime(onRecord: record)

        for _ in 0...Int.random(in: 0...3) {
            info.homeScoreAGoal()
        }
        for _ in 0...Int.random(in: 0...3) {
            info.awayScoreAGoal()
        }

        info.setTime(at: 45)

        halfTime(onRecord: record)

        for _ in 0...Int.random(in: 0...3) {
            info.homeScoreAGoal()
        }
        for _ in 0...Int.random(in: 0...3) {
            info.awayScoreAGoal()
        }

        info.setTime(at: 90)

        fullTime(onRecord: record)
    }

    private mutating func startTime(onRecord record: @escaping (Recordable) -> Void) {
        record(info.make(.startTime))
        record(info.make(.matchResult))
        record(info.make(.kickOff(.initial)))
    }

    private mutating func halfTime(onRecord record: @escaping (Recordable) -> Void) {
        record(info.make(.halfTime))
        record(info.make(.matchResult))
        record(info.make(.kickOff(.secondHalf)))
    }

    private mutating func fullTime(onRecord record: @escaping (Recordable) -> Void) {
        record(info.make(.fullTime))
        record(info.make(.matchResult))
        record(info.make(.matchOutcome))
    }

}
