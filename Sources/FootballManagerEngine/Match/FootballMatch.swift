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
    private var matchResult: MatchResult
    private var currentTime: Int

    private lazy var coinTossWinner: String = home

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
        self.matchResult = MatchResult(
            time: currentTime,
            home: home, homeGoals: homeGoals,
            away: away, awayGoals: awayGoals
        )
    }

    public mutating func start(
        homeGuessCoinSide: CType.CoinSide,
        onRecord record: @escaping (Recordable) -> Void
    ) {
        coinTossWinner = coin.guessTossing(homeGuessCoinSide) ? home : away
        record(CoinTossWinner(time: 0, winner: coinTossWinner))
        start(onRecord: record)
    }

    public mutating func start(onRecord record: @escaping (Recordable) -> Void) {
        matchResult = getMatchResult()
        record(matchResult)
        record(KickOff(time: currentTime, team: coinTossWinner, kickOffType: .initial, matchResult: matchResult))

        homeGoals = Int.random(in: 0...3)
        awayGoals = Int.random(in: 0...3)

        currentTime = 45
        matchResult = getMatchResult()
        record(matchResult)
        record(HalfTime(time: currentTime, matchResult: matchResult))
        record(KickOff(time: currentTime, team: toggleCoinTossWinner(), kickOffType: .secondHalf, matchResult: matchResult))

        homeGoals += Int.random(in: 0...3)
        awayGoals += Int.random(in: 0...3)

        currentTime = 90
        matchResult = getMatchResult()
        record(matchResult)
        record(FullTime(currentTime, matchResult: matchResult))
    }

    private mutating func toggleCoinTossWinner() -> String {
        coinTossWinner != home ? home : away
    }

    private func getMatchResult() -> MatchResult {
        MatchResult(
            time: currentTime,
            home: home, homeGoals: homeGoals,
            away: away, awayGoals: awayGoals
        )
    }

}
