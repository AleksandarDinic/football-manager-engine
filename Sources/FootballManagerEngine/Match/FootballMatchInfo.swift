//
//  FootballMatchInfo.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballMatchInfo: MatchInfo, CoinTossGame {

    public var homeStats: FootballTeamStats
    public var awayStats: FootballTeamStats

    public let stadium: FootballStadium

    public var parts: [FootballMatchPart]
    public var time: FootballMatchTime

    public let coin: Coin
    public let ball: FootballBall
    private(set) var ballInPlay: Bool = false

    public init(
        homeStats: FootballTeamStats,
        awayStats: FootballTeamStats,
        stadium: FootballStadium = FootballStadium(),
        parts: [FootballMatchPart] = [
            FootballMatchPart(name: "First Half", duration: FootballMatchTime(time: 45)),
            FootballMatchPart(name: "Second Half", duration: FootballMatchTime(time: 45))
        ],
        time: FootballMatchTime = FootballMatchTime(),
        coin: Coin = Coin(),
        ball: FootballBall = FootballBall()
    ) {
        self.homeStats = homeStats
        self.awayStats = awayStats
        self.stadium = stadium
        self.parts = parts
        self.time = time
        self.coin = coin
        self.ball = ball
    }

    mutating func homeScoreAGoal() {
        homeStats.scoreAGoal()
    }

    mutating func awayScoreAGoal() {
        awayStats.scoreAGoal()
    }

    mutating func setTime(at time: Int) {
        self.time.setTime(at: time)
    }

    mutating func incrementTime(by time: Int) {
        self.time.incrementTime(by: time)
    }

}

extension FootballMatchInfo {

    mutating func make(_ type: RecordType) -> Recordable {
        switch type {
        case .coinToss:
            return CoinToss(at: time, winner: playFirst)

        case let .time(type):
            return TimeRecord(at: time, type: type)

        case let .kickOff(type):
            return makeKickOff(type)

        case let .restart(type):
            return Restart(at: time, type: type)

        case let .offense(type, player, action):
            return Offense(at: time, type: type, player: player, disciplinaryAction: action)

        case let .stop(type, player: player):
            return Stop(at: time, type: type, player: player)

        case .matchResult:
            return MatchResult(at: time, homeStats: homeStats, awayStats: awayStats)

        case .matchOutcome:
            return MatchOutcome(at: time, homeStats: homeStats, awayStats: awayStats)

        }
    }

    private mutating func makeKickOff(_ type: KickOffType) -> KickOff {
        switch type {
        case .initial:
            return KickOff(at: time, type: type, team: playFirst)
        case .secondHalf:
            return KickOff(at: time, type: type, team: playSecond)
        case .afterGoalScored:
            return KickOff(at: time, type: type, team: homeStats.team)
        }
    }

}
