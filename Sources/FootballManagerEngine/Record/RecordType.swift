//
//  RecordType.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum RecordType: Equatable, CustomStringConvertible {

    case coinToss
    case startTime      
    case kickOff(_ type: KickOffType)
    case dropBall
    case throwIn
    case goalKick
    case cornerKick
    case freeKick(_ type: FreeKickType)
    case penaltyKick
    case matchResult
    case halfTime
    case fullTime
    case matchOutcome

    public var rawValue: String {
        switch self {
        case .coinToss:     return "CT"
        case .startTime:    return "ST"
        case let .kickOff(kickOffType):
            switch kickOffType {
            case .initial:          return "KO - Initial"
            case .secondHalf:       return "KO - Second Half"
            case .afterGoalScored:  return "KO - After Goal Scored"
            }
        case .dropBall:     return "DB"
        case .throwIn:      return "TI"
        case .goalKick:     return "GK"
        case .cornerKick:   return "CK"
        case let .freeKick(freeKickType):
            switch freeKickType {
            case .direct:   return "FK - Direct"
            case .indirect: return "FK - Indirect"
            }
        case .penaltyKick:  return "PK"
        case .matchResult:  return "MR"
        case .halfTime:     return "HT"
        case .fullTime:     return "FT"
        case .matchOutcome: return "MO"
        }
    }

    public var description: String {
        rawValue
    }

}
