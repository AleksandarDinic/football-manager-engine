//
//  MatchInfo.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol MatchInfo {

    associatedtype Stats: TeamStats
    associatedtype Time: MatchTime

    var homeStats: Stats { get }
    var awayStats: Stats { get }

    var time: Time { get set }

}