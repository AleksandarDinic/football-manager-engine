//
//  PenaltyArea.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct PenaltyArea {

    // 16.5 m (18 yds)
    let length: Double

    // 40.3 m (44 yds)
    let width: Double

    // 11 m (12 yds) - from the midpoint between the goalposts.
    let mark: Double

    // 9.15 m (10 yds) - from the centre of penalty mark.
    let arcRadius: Double

    public init(
        length: Double = 16.5,
        width: Double = 40.3,
        mark: Double = 11,
        arcRadius: Double = 9.15
    ) {
        self.length = length
        self.width = width
        self.mark = mark
        self.arcRadius = arcRadius
    }

}
