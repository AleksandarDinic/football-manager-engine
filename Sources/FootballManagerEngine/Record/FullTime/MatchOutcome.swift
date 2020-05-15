//
//  MatchOutcome.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 14/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum MatchOutcome: Equatable {

    case winner(_ team: String)
    case drawn

    init(matchResult: MatchResult) {
        if matchResult.homeGoals > matchResult.awayGoals {
            self = .winner(matchResult.home)

        } else if matchResult.homeGoals < matchResult.awayGoals {
            self = .winner(matchResult.away)

        } else {
            self = .drawn

        }
    }

}
