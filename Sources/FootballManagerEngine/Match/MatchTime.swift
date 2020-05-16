//
//  MatchTime.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol MatchTime {

    associatedtype Time: Numeric

    var time: Time { get set }

}
