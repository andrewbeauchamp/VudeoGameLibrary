//
//  Game.swift
//  VideoGameLibrary
//
//  Created by Andrew Beauchamp on 9/10/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation

class Game {
    let title: String
    let genre: String
    var checkedIn: Bool = true
    let dueDate: Date?
    var releasedDate: Date

    init(title: String, genre:String, checkedIn: Bool, dueDate: Date, releasedDate: Date) {
        self.title = title
        self.genre = genre
        self.checkedIn = checkedIn
        self.dueDate = dueDate
        self.releasedDate = releasedDate
    }
}
