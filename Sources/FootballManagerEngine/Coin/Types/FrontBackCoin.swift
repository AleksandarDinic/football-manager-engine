//
//  FrontBackCoin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct FrontBackCoin: CoinType {

    public enum CoinSide {
        case front
        case back
    }

    public init() {}

    public func toss(desire: Bool = Bool.random()) -> CoinSide {
        desire ? .front : .back
    }

}
