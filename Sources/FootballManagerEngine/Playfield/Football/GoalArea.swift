//
//  GoalArea.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct GoalArea {

    // 5.5 m (6 yds)
    let length: Double

    // 11 m (12 yds)
    let width: Double

    public init(
        length: Double = 5.5,
        width: Double = 11
    ) {
        self.length = length
        self.width = width
    }

}
