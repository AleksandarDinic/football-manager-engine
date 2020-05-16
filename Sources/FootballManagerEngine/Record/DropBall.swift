//
//  DropBall.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A dropped-ball (or drop-ball) is a method of restarting play in a game of association
/// football. It is used when play has been stopped due to reasons other than normal gameplay,
/// fouls, or misconduct.
/// 
/// https://en.wikipedia.org/wiki/Dropped-ball
struct DropBall: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType {
        .dropBall
    }

    init(at time: FootballMatchTime) {
        self.time = time
    }

}
