//
//  FootballMatchPart.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballMatchPart: MatchPart {

    public let name: String
    public let duration: FootballMatchTime

    public init(name: String, duration: FootballMatchTime) {
        self.name = name
        self.duration = duration
    }

}
