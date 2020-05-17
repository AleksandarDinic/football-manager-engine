//
//  FootballPitch.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballPitch: Playfield {

    public let dimensions: FootballPitchDimensions
    public let surface: String?
    public let goalArea: GoalArea
    public let penaltyArea: PenaltyArea
    public let cornerArea: CornerArea
    public let flagpost: Flagpost
    public let goal: Goal

    public init(
        dimensions: FootballPitchDimensions = FootballPitchDimensions(),
        surface: String? = nil,
        goalArea: GoalArea = GoalArea(),
        penaltyArea: PenaltyArea = PenaltyArea(),
        cornerArea: CornerArea = CornerArea(),
        flagpost: Flagpost = Flagpost(),
        goal: Goal = Goal()
    ) {
        self.dimensions = dimensions
        self.surface = surface
        self.goalArea = goalArea
        self.penaltyArea = penaltyArea
        self.cornerArea = cornerArea
        self.flagpost = flagpost
        self.goal = goal
    }

}
