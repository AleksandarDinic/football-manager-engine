//
//  MatchOutcome.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 14/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct MatchOutcome: Recordable {

    enum MatchOutcomeType: Equatable {
        case winner(_ team: FootballTeam)
        case drawn
    }

    var time: FootballMatchTime
    var record: String {
        "\(time)': \(recordType) \(matchOutcomeType)"
    }
    var recordType: RecordType {
        .matchOutcome
    }
    var matchOutcomeType: MatchOutcomeType

    init(at time: FootballMatchTime, homeStats: FootballTeamStats, awayStats: FootballTeamStats) {
        self.time = time

        if homeStats.scores > awayStats.scores {
            matchOutcomeType = .winner(homeStats.team)
        } else if homeStats.scores < awayStats.scores {
            matchOutcomeType = .winner(awayStats.team)
        } else {
            matchOutcomeType = .drawn
        }
    }

}
