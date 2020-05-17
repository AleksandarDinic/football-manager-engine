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
    case offside(_ player: FootballPlayer)
    case foul(_ player: FootballPlayer, disciplinaryAction: DisciplinaryAction?)
    case misconduct(_ player: FootballPlayer, disciplinaryAction: DisciplinaryAction?)
    case matchResult
    case halfTime
    case fullTime
    case matchOutcome

    public var rawValue: String {
        switch self {
        case .coinToss:     return "Coin Toss"
        case .startTime:    return "Start Time"
        case let .kickOff(kickOffType):
            switch kickOffType {
            case .initial:          return "Kick Off - Initial"
            case .secondHalf:       return "Kick Off - Second Half"
            case .afterGoalScored:  return "Kick Off - After Goal Scored"
            }
        case .dropBall:     return "Drop Ball"
        case .throwIn:      return "Throw In"
        case .goalKick:     return "Goal Kick"
        case .cornerKick:   return "Corner Kick"
        case let .freeKick(freeKickType):
            switch freeKickType {
            case .direct:       return "Free Kick - Direct"
            case .indirect:     return "Free Kick - Indirect"
            }
        case .penaltyKick:          return "Penalty Kick"
        case let .offside(player):  return "Offside \(player.lastName)"
        case let .foul(player, action):
            guard let action = action else {
                return "Foul \(player.lastName)"
            }
            return "Foul \(player.lastName) \(action)"
        case let .misconduct(player, action):
            guard let action = action else {
                return "Misconduct \(player.lastName)"
            }
            return "Misconduct \(player.lastName) \(action)"
        case .matchResult:          return "Match Result"
        case .halfTime:             return "Half Time"
        case .fullTime:             return "Full Time"
        case .matchOutcome:         return "Match Outcome"
        }
    }

    public var description: String {
        rawValue
    }

}
