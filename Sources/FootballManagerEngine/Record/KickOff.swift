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
public struct KickOff: Recordable {

    public enum KickOffType {
        case initial
        case secondHalf
        case afterGoalScored
    }

    public let time: Int
    public var record: String {
        "\(time)': \(recordType) \(kickOffType) - \(team)"
    }
    public var recordType: RecordType {
        .kickOff
    }

    private let team: String
    private let kickOffType: KickOffType
    private let matchResult: MatchResult

    init(time: Int, team: String, kickOffType: KickOffType, matchResult: MatchResult) {
        self.time = time
        self.team = team
        self.kickOffType = kickOffType
        self.matchResult = matchResult
    }

}
