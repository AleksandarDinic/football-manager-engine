//
//  FootballMatch.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 13/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballMatch: Match {

    public var home: String
    public var away: String

    public init(home: String, away: String) {
        self.home = home
        self.away = away
    }

    public func start(onRecord record: @escaping (MatchEvent) -> Void) {
        switch Int.random(in: 0...2) {
        case 1:
            record(.end(outcome: .winner(team: home)))
        case 2:
            record(.end(outcome: .winner(team: away)))
        default:
            record(.end(outcome: .drawn))
        }
    }

}
