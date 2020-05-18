//
//  Stop.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 18/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct Stop: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType

    init(at time: FootballMatchTime, type: StopType, player: FootballPlayer) {
        self.time = time
        self.recordType = .stop(type, player: player)
    }

}
