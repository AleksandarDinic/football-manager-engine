//
//  CoinTossWinner.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct CoinTossWinner: Recordable {

    var time: Int
    var record: String {
        "\(time)': \(recordType) \(winner)"
    }
    var recordType: RecordType {
        .coinTossWinner
    }

    var winner: String

}
