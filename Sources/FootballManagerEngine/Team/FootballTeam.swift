//
//  FootballTeam.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballTeam: Team {

    public var name: String
    public var players: [FootballPlayer]

    public init(name: String, players: [FootballPlayer]) {
        self.name = name
        self.players = players
    }

}

extension FootballTeam {

    public static func == (lhs: FootballTeam, rhs: FootballTeam) -> Bool {
        lhs.name == rhs.name
    }

}

extension FootballTeam: CustomStringConvertible {

    public var description: String {
        "\(name)"
    }

}
