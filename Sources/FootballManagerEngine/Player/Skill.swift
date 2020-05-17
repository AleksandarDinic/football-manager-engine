//
//  Skill.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct Skill {

    var skillType: SkillType
    var value: Double

    public init(_ skillType: SkillType, value: Double) {
        self.skillType = skillType
        self.value = value
    }

}

public enum SkillType: String {

    case attack         = "Attack"
    case defence        = "Defence"
    case goalkeeping    = "Goalkeeping"
    case mental         = "Mental"
    case physical       = "Physica"
    case speed          = "Speed"

}
