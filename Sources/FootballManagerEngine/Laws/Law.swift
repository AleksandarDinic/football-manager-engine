//
//  LawOfTheGame.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// The Laws of the Game are the codified rules of association football. The laws mention the
/// number of players a team should have, the game length, the size of the field and ball, the
/// type and nature of fouls that referees may penalise, the frequently misinterpreted offside
/// law, and many other laws that define the sport. During a match, it is the task of the
/// referee to interpret and enforce the Laws of the Game.
///
/// https://en.wikipedia.org/wiki/Laws_of_the_Game_(association_football)
protocol Law {

    var number: Int { get }
    var name: String { get }
    var year: Int { get }

}
