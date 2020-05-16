//
//  FootballMatch.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballMatch<CType: CoinType>: Match {

    public var home: String
    public var away: String

    private var homeGoals: Int
    private var awayGoals: Int

    private let coin: Coin<CType>
    private var currentTime: Int

    private lazy var coinTossWinner: String = home

    private var matchResult: MatchResult {
        MatchResult(
            time: currentTime,
            home: home, homeGoals: homeGoals,
            away: away, awayGoals: awayGoals
        )
    }

    public init(
        home: String,
        away: String,
        coin: Coin<CType>,
        homeGoals: Int = 0,
        awayGoals: Int = 0,
        currentTime: Int = 0
    ) {
        self.home = home
        self.away = away
        self.coin = coin
        self.homeGoals = homeGoals
        self.awayGoals = awayGoals
        self.currentTime = currentTime
    }

    public mutating func start(
        homeGuessCoinSide: CType.CoinSide,
        onRecord record: @escaping (Recordable) -> Void
    ) {
        coinTossWinner = coin.guessTossing(homeGuessCoinSide) ? home : away
        record(CoinToss(time: currentTime, winner: coinTossWinner))
        start(onRecord: record)
    }

    public mutating func start(onRecord record: @escaping (Recordable) -> Void) {
        startTime(onRecord: record)

        homeGoals = Int.random(in: 0...3)
        awayGoals = Int.random(in: 0...3)

        currentTime = 45

        halfTime(onRecord: record)

        homeGoals += Int.random(in: 0...3)
        awayGoals += Int.random(in: 0...3)

        currentTime = 90

        fullTime(onRecord: record)
    }

    private func matchResult(onRecord record: @escaping (Recordable) -> Void) {
        record(matchResult)
    }

    private mutating func startTime(onRecord record: @escaping (Recordable) -> Void) {
        record(StartTime(time: currentTime))
        matchResult(onRecord: record)
        record(KickOff(time: currentTime, kickOffType: .initial, team: coinTossWinner))
    }

    private mutating func halfTime(onRecord record: @escaping (Recordable) -> Void) {
        record(HalfTime(time: currentTime))
        matchResult(onRecord: record)
        record(KickOff(time: currentTime, kickOffType: .secondHalf, team: toggleCoinTossWinner()))
    }

    private mutating func toggleCoinTossWinner() -> String {
        coinTossWinner != home ? home : away
    }

    private func fullTime(onRecord record: @escaping (Recordable) -> Void) {
        record(FullTime(time: currentTime))
        matchResult(onRecord: record)
        record(MatchOutcome(time: currentTime, matchResult: matchResult))
    }

}
