//
//  FootballTeamStats.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballTeamStats: TeamStats {

    public let team: FootballTeam
    public var scores: Int
    public var playFirst: Bool

    public init(team: FootballTeam, scores: Int = 0, playFirst: Bool = false) {
        self.team = team
        self.scores = scores
        self.playFirst = playFirst
    }

    mutating func scoreAGoal() {
        scores += 1
    }

}
