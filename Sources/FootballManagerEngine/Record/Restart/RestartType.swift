//
//  RestartType.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 18/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public enum RestartType: Equatable {

    /// A corner kick is the method of restarting play in a game of association football when
    /// the ball goes out of play over the goal line, without a goal being scored and having
    /// last been touched by a member of the defending team.
    ///
    /// https://en.wikipedia.org/wiki/Corner_kick
    case cornerKick

    /// A dropped-ball (or drop-ball) is a method of restarting play in a game of association
    /// football. It is used when play has been stopped due to reasons other than normal
    /// gameplay, fouls, or misconduct.
    ///
    /// https://en.wikipedia.org/wiki/Dropped-ball
    case dropBall

    /// A goal kick, called a goalie kick in some regions, is a method of restarting play in a
    /// game of association football.
    ///
    /// https://en.wikipedia.org/wiki/Goal_kick
    case goalKick

    /// A penalty kick (commonly known as a penalty or a PK) is a method of restarting play in
    /// association football, in which a player is allowed to take a single shot on the goal
    /// while it is defended only by the opposing team's goalkeeper.
    ///
    /// https://en.wikipedia.org/wiki/Penalty_kick_(association_football)
    case penaltyKick

    /// A throw-in is a method of restarting play in a game of football (or soccer) when the ball
    /// has exited the side of the field of play.
    ///
    /// https://en.wikipedia.org/wiki/Throw-in
    case throwIn

    /// A free kick is a method of restarting play in association football. It is awarded after
    /// an infringement of the laws by the opposing team.
    ///
    /// https://en.wikipedia.org/wiki/Free_kick_(association_football)
    case freeKick(_ type: FreeKickType)

}

extension RestartType: CustomStringConvertible {

    public var description: String {
        rawValue
    }

    public var rawValue: String {
        switch self {
        case .cornerKick:           return "Corner Kick"
        case .dropBall:             return "Drop Ball"
        case .goalKick:             return "Goal Kick"
        case .penaltyKick:          return "Penalty Kick"
        case .throwIn:              return "Throw In"
        case let .freeKick(type):   return "Free Kick - \(type)"
        }
    }

}
