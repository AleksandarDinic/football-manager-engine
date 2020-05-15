//
//  FrontBackCoin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct FrontBackCoin: CoinType {

    enum CoinSide {
        case front
        case back
    }

    func toss(desire: Bool = Bool.random()) -> CoinSide {
        desire ? .front : .back
    }

}
