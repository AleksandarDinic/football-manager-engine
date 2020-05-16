//
//  KickOff.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 14/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A kick-off is the method of starting and, in some cases, restarting play in a game of
/// association football. The rules concerning the kick-off are part of Law 8 of the Laws
/// of the Game.
///
/// https://en.wikipedia.org/wiki/Kick-off_(association_football)
struct KickOff: Recordable {

    enum KickOffType {
        case initial
        case secondHalf
        case afterGoalScored
    }

    let time: Int
    var record: String {
        "\(time)': \(recordType) \(kickOffType) - \(team)"
    }
    var recordType: RecordType {
        .kickOff
    }
    
    let kickOffType: KickOffType
    let team: String

}
