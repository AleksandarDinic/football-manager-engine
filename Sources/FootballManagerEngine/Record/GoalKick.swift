//
//  GoalKick.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A goal kick, called a goalie kick in some regions, is a method of restarting play in a game
/// of association football.
///
/// https://en.wikipedia.org/wiki/Goal_kick
struct GoalKick: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType {
        .goalKick
    }

    init(at time: FootballMatchTime) {
        self.time = time
    }

}
