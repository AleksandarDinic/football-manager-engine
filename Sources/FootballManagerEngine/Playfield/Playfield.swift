//
//  Playfield.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol Playfield {

    associatedtype Dimensions: PlayfieldDimensions

    var dimensions: Dimensions { get }
    var surface: String? { get }

}
