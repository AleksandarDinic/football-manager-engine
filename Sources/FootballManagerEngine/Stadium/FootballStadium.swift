//
//  FootballStadium.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballStadium: Stadium {

    public let name: String
    public let playfield: FootballPitch
    public let capacity: Int
    public let location: String?
    public let scoreboard: String?
    public let opened: Data?
    public let constructionCost: Double?

    public init(
        name: String = "Neutral Stadium",
        playfield: FootballPitch = FootballPitch(),
        capacity: Int = 0,
        location: String? = nil,
        scoreboard: String? = nil,
        opened: Data? = nil,
        constructionCost: Double? = nil
    ) {
        self.name = name
        self.playfield = playfield
        self.capacity = capacity
        self.location = location
        self.scoreboard = scoreboard
        self.opened = opened
        self.constructionCost = constructionCost
    }

}
