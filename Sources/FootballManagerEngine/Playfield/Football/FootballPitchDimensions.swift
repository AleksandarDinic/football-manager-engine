//
//  FootballPitchDimensions.swift
//  FootballManagerEngine
//
//  Created by Aleksandar Dinic on 17/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

// Anfield – 100 yards by 74 yards (101m x 68m)
// Camp Nou – 114 yards by 74 yards (105m x 68m)
// Emirates Stadium –115 yards by 74 yards (105m x 68m)
// Etihad Stadium – 115 yards by 74 yards (105m x 68m)
// Old Trafford – 116 yards by 76 yards (106m x 69m)
// Stamford Bridge – 112 yards by 73 yards (103m x 67m)
// White Hart Lane – 109 yards by 73 yards (100m x 67m)

struct FootballPitchDimensions: PlayfieldDimensions {

    // 90 m  (100 yds) - 120 m (130 yds)
    // 100 m (110 yds) - 110 m (120 yds) -> international matches
    let length: Double

    // 45 m (50 yds) - 90 m (100 yds)
    // 64 m (70 yds) - 75 m (80 yds)  -> international matches
    let width: Double


}
