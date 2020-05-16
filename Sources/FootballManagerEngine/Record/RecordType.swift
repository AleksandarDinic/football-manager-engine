//
//  RecordType.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum RecordType: String, CustomStringConvertible {

    case coinToss       = "CT"
    case startTime      = "ST"
    case kickOff        = "KO"
    case matchResult    = "MR"
    case halfTime       = "HT"
    case fullTime       = "FT"
    case matchOutcome   = "MO"

    public var description: String {
        rawValue
    }

}
