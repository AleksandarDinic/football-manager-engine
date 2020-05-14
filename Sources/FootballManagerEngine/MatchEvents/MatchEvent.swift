//
//  MatchEvent.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum MatchEvent: Equatable {

    case end(outcome: MatchOutcome)

    public static func == (lhs: MatchEvent, rhs: MatchEvent) -> Bool {
        switch (lhs, rhs) {
        case let (end(lhsOutcome), end(rhsOutcome)):
            return lhsOutcome == rhsOutcome
        }
    }

}

public enum MatchOutcome: Equatable {

    case winner(team: String)
    case drawn

}
