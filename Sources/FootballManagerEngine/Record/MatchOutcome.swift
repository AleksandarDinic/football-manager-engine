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
        case winner(_ team: String)
        case drawn
    }

    var time: Int
    var record: String {
        "\(time)': \(recordType) \(matchOutcomeType)"
    }
    var recordType: RecordType {
        .matchOutcome
    }
    var matchOutcomeType: MatchOutcomeType

    init(time: Int, matchResult: MatchResult) {
        self.time = time

        if matchResult.homeGoals > matchResult.awayGoals {
            matchOutcomeType = .winner(matchResult.home)
        } else if matchResult.homeGoals < matchResult.awayGoals {
            matchOutcomeType = .winner(matchResult.away)
        } else {
            matchOutcomeType = .drawn
        }
    }

}
