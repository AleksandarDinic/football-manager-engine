//
//  FootballMatchTime.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballMatchTime: MatchTime {

    public var time: Int

    public init(time: Int = 0) {
        self.time = time
    }

    mutating func setTime(at time: Int) {
        self.time = time
    }

    mutating func incrementTime(by time: Int) {
        self.time += time
    }

}
