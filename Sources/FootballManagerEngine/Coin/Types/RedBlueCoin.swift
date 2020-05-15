//
//  RedBlueCoin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct RedBlueCoin: CoinType {

    public enum CoinSide {
        case red
        case blue
    }

    public init() {}

    public func toss(desire: Bool = Bool.random()) -> CoinSide {
        desire ? .red : .blue
    }

}
