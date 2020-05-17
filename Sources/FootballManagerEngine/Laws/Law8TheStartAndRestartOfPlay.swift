//
//  Law8TheStartAndRestartOfPlay.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// The Start and Restart of Play is the 8th of the Laws of the Game of association football.
/// It concerns the methods of starting or restarting play in a game via the kick-off and
/// dropped ball. Other methods of restarting play are addressed in other laws.
///
/// https://en.wikipedia.org/wiki/The_Start_and_Restart_of_Play_(association_football)

/// 1. Kick-off
///
/// A kick-off starts both halves of a match, both halves of extra time and restarts play after
/// a goal has been scored. Free kicks (direct or indirect), penalty kicks, throw-ins, goal
/// kicks and corner kicks are other restarts (see Laws 13–17).
///
/// A dropped ball is the restart when the referee stops play and the Law does not require one
/// of the above restarts.
///
/// If an offence occurs when the ball is not in play, this does not change how play is
/// restarted.
///
/// Procedure
/// • the team that wins the toss of a coin decides which goal to attack in the first half
/// or to take the kick-off
/// • depending on the above, their opponents take the kick-off or decide which goal to
/// attack in the first half
/// • the team that decided which goal to attack in the first half takes the kick-off to
/// start the second half
/// • for the second half, the teams change ends and attack the opposite goals • after a
/// team scores a goal, the kick-off is taken by their opponents
///
/// For every kick-off:
///
/// • all players, except the player taking the kick-off, must be in their own half of the
/// field of play
/// • the opponents of the team taking the kick-off must be at least 9.15 m (10 yds) from
/// the ball until it is in play
/// • the ball must be stationary on the centre mark
/// • the referee gives a signal
/// • the ball is in play when it is kicked and clearly moves
/// • a goal may be scored directly against the opponents from the kick-off; if the ball
/// directly enters the kicker’s goal, a corner kick is awarded to the opponents

/// Offences and sanctions
///
/// If the player taking the kick-off touches the ball again before it has touched another
/// player, an indirect free kick, or for a handball offence, a direct free kick, is awarded.
///
/// In the event of any other kick-off procedure offence, the kick-off is retaken.
///
/// 2. Dropped ball
///
/// Procedure
///
/// • The ball is dropped for the defending team goalkeeper in their penalty area if, when play
/// was stopped:
///     • the ball was in the penalty area or
///     • the last touch of the ball was in the penalty area
/// • In all other cases, the referee drops the ball for one player of the team that last
/// touched the ball at the position where it last touched a player, an outside agent or, as
/// outlined in Law 9.1, a match official
/// • All other players (of both teams) must remain at least 4 m (4.5 yds) from the ball until
/// it is in play
///
/// The ball is in play when it touches the ground.
///
/// Offences and sanctions
///
/// The ball is dropped again if it:
/// • touches a player before it touches the ground
/// • leaves the field of play after it touches the ground, without touching a player
///
/// If a dropped ball enters the goal without touching at least two players, play is restarted
/// with:
///
/// • a goal kick if it enters the opponents’ goal
/// • a corner kick if it enters the team’s goal
///
struct Law8TheStartAndRestartOfPlay: Law {

    var number: Int {
        8
    }
    var name: String {
        "The Start and Restart of Play"
    }
    var year: Int {
        1886
    }

}
