//
//  Team.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol Team: Equatable {

    associatedtype PlayerType: Player

    var name: String { get }
    var players: [PlayerType] { get set }

}
