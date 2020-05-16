//
//  PenaltyKick.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A penalty kick (commonly known as a penalty or a PK) is a method of restarting play in
/// association football, in which a player is allowed to take a single shot on the goal while
/// it is defended only by the opposing team's goalkeeper.
///
/// https://en.wikipedia.org/wiki/Penalty_kick_(association_football)
struct PenaltyKick: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType {
        .penaltyKick
    }

    init(at time: FootballMatchTime) {
        self.time = time
    }

}
