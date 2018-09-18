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
    
    init(title: String) { //The other two values (checkedIn and dueDate do not need any initializers since one of them is an optional and the other has a default value
        self.title = title
    }
}
