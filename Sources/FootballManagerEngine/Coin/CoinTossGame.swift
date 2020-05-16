//
//  CoinTossGame.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 16/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

protocol CoinTossGame {

    associatedtype Stats: TeamStats

    var coin: Coin { get }

    var homeStats: Stats { get set }
    var awayStats: Stats { get set }

    mutating func playCoinToss(
        homeGuess coinSide: CoinSide,
        homeDecision: CoinGameDecision,
        awayDecision: CoinGameDecision
    )

}

extension CoinTossGame {

    mutating func playCoinToss(
        homeGuess coinSide: CoinSide,
        homeDecision: CoinGameDecision,
        awayDecision: CoinGameDecision
    ) {
        if coin.guessTossing(coinSide) {
            homeStats.playFirst = homeDecision == .kickOff
            awayStats.playFirst = homeDecision != .kickOff
        } else {
            homeStats.playFirst = awayDecision != .kickOff
            awayStats.playFirst = awayDecision == .kickOff
        }
    }

    var playFirst: Stats.T {
        homeStats.playFirst ? homeStats.team : awayStats.team
    }

    var playSecond: Stats.T {
        homeStats.playFirst ? awayStats.team : homeStats.team
    }

}
