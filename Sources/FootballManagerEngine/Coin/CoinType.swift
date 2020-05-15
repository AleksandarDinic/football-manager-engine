//
//  CoinType.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Coin flipping, coin tossing, or heads or tails is the practice of throwing a coin in the air
/// and checking which side is showing when it lands, in order to choose between two
/// alternatives, sometimes used to resolve a dispute between two parties. 
/// https://en.wikipedia.org/wiki/Coin_flipping
protocol CoinType {

    associatedtype CoinSide: Equatable

    func toss(desire: Bool) -> CoinSide
    func guessTossing(_ side: CoinSide, desire: Bool) -> Bool

}

extension CoinType {

    func guessTossing(_ side: CoinSide, desire: Bool = Bool.random()) -> Bool {
        desire ? true : side == toss(desire: desire)
    }

}
