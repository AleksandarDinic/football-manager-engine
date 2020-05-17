//
//  Foul.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

struct Foul: Recordable {

    var time: FootballMatchTime
    var recordType: RecordType

    init(
        at time: FootballMatchTime,
        player: FootballPlayer,
        disciplinaryAction action: DisciplinaryAction?
    ) {
        self.time = time
        self.recordType = .foul(player, disciplinaryAction: action)
    }

}
