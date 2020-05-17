//
//  FootballPlayer.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballPlayer: Player {

    public var firstName: String
    public var lastName: String
    public var age: Int
    public var skills: [Skill]
    public var shirtNumber: Int
    public var nationality: String?
    public var teamCaptain: Bool
    public var equipment: FootballPlayerEquipment?

    public init(
        firstName: String,
        lastName: String,
        age: Int,
        skills: [Skill],
        shirtNumber: Int,
        nationality: String? = nil,
        teamCaptain: Bool = false,
        equipment: FootballPlayerEquipment? = nil
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.skills = skills
        self.shirtNumber = shirtNumber
        self.nationality = nationality
        self.teamCaptain = teamCaptain
        self.equipment = equipment
    }

}

extension FootballPlayer {

    public static func == (lhs: FootballPlayer, rhs: FootballPlayer) -> Bool {
        lhs.firstName == rhs.firstName &&
            lhs.lastName == rhs.lastName &&
            lhs.age == rhs.age &&
            lhs.shirtNumber == rhs.shirtNumber
    }

}
