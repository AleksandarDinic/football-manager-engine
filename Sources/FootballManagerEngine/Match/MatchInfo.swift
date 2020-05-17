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
    associatedtype StadiumType: Stadium
    associatedtype Part: MatchPart
    associatedtype Time: MatchTime

    var homeStats: Stats { get }
    var awayStats: Stats { get }

    var stadium: StadiumType { get }

    var parts: [Part] { get set }
    var time: Time { get set }

}
