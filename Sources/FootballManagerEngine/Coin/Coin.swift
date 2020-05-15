//
//  Coin.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 14/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// A coin is a small, flat, (usually, depending on the country or value) round piece of metal
/// or plastic used primarily as a medium of exchange or legal tender. 
/// https://en.wikipedia.org/wiki/Coin
struct Coin<T: CoinType> {

    private var coinType: T

    init(_ coinType: T) {
        self.coinType = coinType
    }

    func toss(desire: Bool = Bool.random()) -> T.CoinSide {
        coinType.toss(desire: desire)
    }

    func guessTossing(_ side: T.CoinSide, desire: Bool = Bool.random()) -> Bool {
        coinType.guessTossing(side, desire: desire)
    }

}
