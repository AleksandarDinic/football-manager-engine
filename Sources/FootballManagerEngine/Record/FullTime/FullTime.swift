//
//  FullTime.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FullTime: Recordable {

    public var time: Int
    public var record: String {
        "\(time)': \(recordType) \(matchOutcome)"
    }
    public var recordType: RecordType {
        .fullTime
    }

    private var matchOutcome: MatchOutcome

    init(time: Int, matchOutcome: MatchOutcome) {
        self.time = time
        self.matchOutcome = matchOutcome
    }

    init(_ time: Int, matchResult: MatchResult) {
        let outcome = MatchOutcome(matchResult: matchResult)
        self.init(time: time, matchOutcome: outcome)
    }

}
