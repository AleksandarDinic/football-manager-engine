//
//  MatchResult.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct MatchResult: Recordable {

    let time: FootballMatchTime
    var record: String {
        "\(time)': \(recordType) \(homeStats.team) \(homeStats.scores) : \(awayStats.team) \(awayStats.scores)"
    }
    var recordType: RecordType {
        .matchResult
    }

    let homeStats: FootballTeamStats
    let awayStats: FootballTeamStats

    init(at time: FootballMatchTime, homeStats: FootballTeamStats, awayStats: FootballTeamStats) {
        self.time = time
        self.homeStats = homeStats
        self.awayStats = awayStats
    }

}
