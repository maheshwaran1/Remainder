//
//  Reminder.swift
//  Remainder
//
//  Created by mahesh on 22/02/22.
//

import Foundation

//models

struct Reminder {
    var id: String
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var location: String? = nil
    var isComplete: Bool = false
}



