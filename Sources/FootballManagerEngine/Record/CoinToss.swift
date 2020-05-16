//
//  CoinToss.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct CoinToss: Recordable {

    var time: FootballMatchTime
    var record: String {
        "\(time)': \(recordType) \(winner)"
    }
    var recordType: RecordType {
        .coinToss
    }

    var winner: FootballTeam

    init(at time: FootballMatchTime, winner: FootballTeam) {
        self.time = time
        self.winner = winner
    }

}
