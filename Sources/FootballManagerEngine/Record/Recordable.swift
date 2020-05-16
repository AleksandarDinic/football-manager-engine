//
//  Recordable.swift
//  FootballManagerEngineTests
//
//  Created by Aleksandar Dinic on 15/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

public protocol Recordable {

    var time: Int { get }
    var record: String { get }
    var recordType: RecordType { get }

}

extension Recordable {

    var record: String {
        "\(time)': \(recordType)"
    }

}
