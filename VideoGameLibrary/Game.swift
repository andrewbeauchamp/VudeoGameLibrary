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
    var checkedIn: Bool = true
    var dueDate: Date?
    
    init(title: String) {
        self.title = title
    }
}
