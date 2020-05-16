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
public struct Coin<CType: CoinType> {

    private var coinType: CType

    public init(_ coinType: CType) {
        self.coinType = coinType
    }

    public func toss(desire: Bool = Bool.random()) -> CType.CoinSide {
        coinType.toss(desire: desire)
    }

    public func guessTossing(_ side: CType.CoinSide, desire: Bool = Bool.random()) -> Bool {
        coinType.guessTossing(side, desire: desire)
    }

}
