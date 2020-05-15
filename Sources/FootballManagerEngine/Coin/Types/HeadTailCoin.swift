//
//  HeadTailCoin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct HeadTailCoin: CoinType {

    enum CoinSide {
        case head
        case tail
    }

    func toss(desire: Bool = Bool.random()) -> CoinSide {
        desire ? .head : .tail
    }

}
