//
//  FullTime.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct FullTime: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType {
        .fullTime
    }

    init(at time: FootballMatchTime) {
        self.time = time
    }

}
