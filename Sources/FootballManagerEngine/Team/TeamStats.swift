//
//  TeamStats.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol TeamStats {

    associatedtype T: Team

    var team: T { get }
    var scores: Int { get set }
    var playFirst: Bool { get set }

}
