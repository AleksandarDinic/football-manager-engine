//
//  FreeKick.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A free kick is a method of restarting play in association football. It is awarded after an
/// infringement of the laws by the opposing team.
///
/// https://en.wikipedia.org/wiki/Free_kick_(association_football)
struct FreeKick: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType

    init(at time: FootballMatchTime, type: FreeKickType) {
        self.time = time
        self.recordType = .freeKick(type)
    }

}

public enum FreeKickType {
    case direct
    case indirect
}
