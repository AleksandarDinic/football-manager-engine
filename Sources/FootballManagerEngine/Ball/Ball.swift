//
//  Ball.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol Ball {

    var name: String { get }

    // 68 cm (27 ins) - 70 cm (28 ins)
    var circumference: Double { get }

    // 410 g (14 oz) - 450 g (16 oz)
    var weight: Double { get }

    // 0.6 – 1.1 atmosphere (600 – 1,100g/cm2)
    var pressure: Double { get }

    var year: Int { get }

}
