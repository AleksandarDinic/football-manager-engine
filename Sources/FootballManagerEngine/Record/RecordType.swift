//
//  RecordType.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum RecordType: Equatable {

    case coinToss
    case time(_ type: TimeRecordType)
    case kickOff(_ type: KickOffType)
    case restart(_ type: RestartType)
    case offense(_ type: OffenseType, player: FootballPlayer, disciplinaryAction: DisciplinaryAction?)
    case stop(_ type: StopType, player: FootballPlayer)
    case matchResult
    case matchOutcome

}

extension RecordType: CustomStringConvertible {

    public var description: String {
        rawValue
    }

    public var rawValue: String {
        switch self {
        case .coinToss:                 return "Coin Toss"

        case let .time(type):           return "\(type)"
        case let .kickOff(type):        return "Kick Off - \(type)"
        case let .restart(type):        return "\(type)"

        case let .offense(type, player, action):
            guard let action = action else {
                return "\(type) \(player)"
            }
            return "\(type) \(player) \(action)"

        case let .stop(type, player):   return "\(type) \(player)"

        case .matchResult:              return "Match Result"
        case .matchOutcome:             return "Match Outcome"
        }
    }

}
