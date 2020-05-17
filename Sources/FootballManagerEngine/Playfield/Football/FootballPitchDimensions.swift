//
//  FootballPitchDimensions.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballPitchDimensions: PlayfieldDimensions {

    // 90 m  (100 yds) - 120 m (130 yds)
    // 100 m (110 yds) - 110 m (120 yds) -> international matches
    public let length: Double

    // 45 m (50 yds) - 90 m (100 yds)
    // 64 m (70 yds) - 75 m (80 yds)  -> international matches
    public let width: Double

    public init(length: Double = 120, width: Double = 90) {
        self.length = length
        self.width = width
    }

}
