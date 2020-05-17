//
//  Stadium.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol Stadium {

    associatedtype Field: Playfield

    var name: String { get }
    var playfield: Field { get }
    var capacity: Int { get }
    var location: String? { get }
    var scoreboard: String? { get }
    var opened: Data? { get }
    var constructionCost: Double? { get }

}
