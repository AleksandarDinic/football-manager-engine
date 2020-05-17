//
//  Player.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol Player {

    associatedtype Equipment: PlayersEquipment

    var firstName: String { get }
    var lastName: String { get }
    var age: Int { get set }
    var skills: [Skill] { get }
    var shirtNumber: Int { get set }
    var nationality: String? { get }
    var equipment: Equipment? { get set }

}
