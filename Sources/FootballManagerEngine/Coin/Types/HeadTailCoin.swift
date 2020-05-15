//
//  HeadTailCoin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public struct HeadTailCoin: CoinType {

    public enum CoinSide {
        case head
        case tail
    }
    
    public init() {}

    public func toss(desire: Bool = Bool.random()) -> CoinSide {
        desire ? .head : .tail
    }

}
