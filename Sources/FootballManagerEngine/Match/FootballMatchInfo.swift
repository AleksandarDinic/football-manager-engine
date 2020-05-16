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

    public var time: FootballMatchTime

    public let coin: Coin

    public init(
        homeStats: FootballTeamStats,
        awayStats: FootballTeamStats,
        time: FootballMatchTime = FootballMatchTime(),
        coin: Coin = Coin()
    ) {
        self.homeStats = homeStats
        self.awayStats = awayStats
        self.time = time
        self.coin = coin
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

        case .startTime:
            return StartTime(at: time)

        case let .kickOff(type):
            return makeKickOff(type)

        case .dropBall:
            return DropBall(at: time)

        case .throwIn:
            return ThrowIn(at: time)

        case .goalKick:
            return GoalKick(at: time)

        case .cornerKick:
            return CornerKick(at: time)

        case let .freeKick(type):
            return FreeKick(at: time, type: type)

        case .penaltyKick:
            return PenaltyKick(at: time)

        case .matchResult:
            return MatchResult(at: time, homeStats: homeStats, awayStats: awayStats)

        case .halfTime:
            return HalfTime(at: time)

        case .fullTime:
            return FullTime(at: time)

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
