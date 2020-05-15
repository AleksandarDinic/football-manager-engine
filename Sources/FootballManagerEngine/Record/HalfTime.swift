//
//  HalfTime.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct HalfTime: Recordable {

    public var time: Int
    public var record: String {
        "\(time)': \(recordType)"
    }
    public var recordType: RecordType {
        .halfTime
    }

    private var matchResult: MatchResult

    init(time: Int, matchResult: MatchResult) {
        self.time = time
        self.matchResult = matchResult
    }

}
