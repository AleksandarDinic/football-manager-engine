//
//  Goal.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct Goal {

    // 2.44 m (8 ft)
    let height: Double

    // 7.32 m (8 yds)
    let width: Double

    public init(height: Double = 2.44, width: Double = 7.32) {
        self.height = height
        self.width = width
    }

}
