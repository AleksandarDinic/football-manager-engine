//
//  StartTime.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct StartTime: Recordable {

    var time: Int
    var recordType: RecordType {
        .startTime
    }

}
