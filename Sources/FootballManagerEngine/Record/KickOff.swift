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

    let time: FootballMatchTime
    var record: String {
        "\(time)': \(recordType) - \(team)"
    }
    var recordType: RecordType
    let team: FootballTeam

    init(at time: FootballMatchTime, type: KickOffType, team: FootballTeam) {
        self.time = time
        self.recordType = .kickOff(type)
        self.team = team
    }

}

public enum KickOffType {
    case initial
    case secondHalf
    case afterGoalScored
}
