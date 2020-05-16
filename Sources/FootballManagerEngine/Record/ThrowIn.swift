//
//  ThrowIn.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A throw-in is a method of restarting play in a game of football (or soccer) when the ball
/// has exited the side of the field of play.
/// 
/// https://en.wikipedia.org/wiki/Throw-in
struct ThrowIn: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType {
        .throwIn
    }

    init(at time: FootballMatchTime) {
        self.time = time
    }

}
