//
//  Restart.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 18/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct Restart: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType

    init(at time: FootballMatchTime, type: RestartType) {
        self.time = time
        self.recordType = .restart(type)
    }

}
