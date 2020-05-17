//
//  Flagpost.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A flagpost, at least 1.5 m (5 ft) high, with a non-pointed top and a flag must be placed at
/// each corner.
///
/// Flagposts may be placed at each end of the halfway line, at least 1 m (1 yd) outside the
/// touchline.
public struct Flagpost {

    // 1.5 m (5 ft)
    let high: Double

    public init(high: Double = 1.5) {
        self.high = high
    }

}
