//
//  Achievements.swift
//  BGClan
//
//  Created by Batch-2 on 26/05/24.
//

import Foundation
import UIKit
struct Achievements {
    var eventName: String
    var eventPoster: UIImage
    var eventRank: String
}

var achievements: [Achievements] = [
    Achievements(eventName: "Battlegrounds Mobile India Series 2024", eventPoster:UIImage(named: "ach1")! , eventRank: "Ranked 3rd out of 50 teams in BGIS 2023"),
    Achievements(eventName: "Battlegrounds Mobile India Series 2024", eventPoster: UIImage(named: "ach2")!, eventRank: "Ranked 3rd out of 50 teams in BGIS 2023"),
    Achievements(eventName: "Battlegrounds Mobile India Series 2024", eventPoster: UIImage(named: "ach1")!, eventRank: "Ranked 3rd out of 50 teams in BGIS 2023")
]

