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

        case let .offside(player):
            return Offside(at: time, player: player)

        case let.foul(player, action):
            return Foul(at: time, player: player, disciplinaryAction: action)

        case let .misconduct(player, action):
            return Misconduct(at: time, player: player, disciplinaryAction: action)

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
