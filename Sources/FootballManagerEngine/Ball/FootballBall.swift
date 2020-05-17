//
//  FootballBall.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FootballBall: Ball {

    public let name: String
    public let circumference: Double
    public let weight: Double
    public let pressure: Double
    public let year: Int

    public init(
        name: String = "Telstar",
        circumference: Double = 70,
        weight: Double = 450,
        pressure: Double = 1.1,
        year: Int = 1968
    ) {
        self.name = name
        self.circumference = circumference
        self.weight = weight
        self.pressure = pressure
        self.year = year
    }

}
