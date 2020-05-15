//
//  MatchResult.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct MatchResult: Recordable {

    let time: Int
    var record: String {
        "\(time)': \(recordType) \(home) \(homeGoals) : \(awayGoals) \(away)"
    }
    var recordType: RecordType {
        .matchResult
    }

    let home: String
    let homeGoals: Int
    let away: String
    let awayGoals: Int

}
