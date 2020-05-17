//
//  MatchPart.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol MatchPart {

    associatedtype Time: MatchTime

    var name: String { get }
    var duration: Time { get }

}
