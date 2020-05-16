//
//  CornerKick.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A corner kick is the method of restarting play in a game of association football when the
/// ball goes out of play over the goal line, without a goal being scored and having last been
/// touched by a member of the defending team.
/// 
/// https://en.wikipedia.org/wiki/Corner_kick
struct CornerKick: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType {
        .cornerKick
    }

    init(at time: FootballMatchTime) {
        self.time = time
    }

}
