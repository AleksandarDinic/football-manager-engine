//
//  Offense.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 18/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct Offense: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType

    init(
        at time: FootballMatchTime,
        type: OffenseType,
        player: FootballPlayer,
        disciplinaryAction action: DisciplinaryAction?
    ) {
        self.time = time
        self.recordType = .offense(type, player: player, disciplinaryAction: action)
    }

}
