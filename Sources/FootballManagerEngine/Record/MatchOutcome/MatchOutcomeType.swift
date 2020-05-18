//
//  MatchOutcomeType.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 18/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum MatchOutcomeType: Equatable {

    case winner(_ team: FootballTeam)
    case drawn

}

extension MatchOutcomeType: CustomStringConvertible {

    public var description: String {
        rawValue
    }

    public var rawValue: String {
        switch self {
        case let .winner(team): return "Winner: \(team)"
        case .drawn:            return "Drawn"
        }
    }

}
