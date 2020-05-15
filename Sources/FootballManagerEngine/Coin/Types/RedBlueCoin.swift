//
//  RedBlueCoin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct RedBlueCoin: CoinType {

    enum CoinSide {
        case red
        case blue
    }

    func toss(desire: Bool = Bool.random()) -> CoinSide {
        desire ? .red : .blue
    }

}
