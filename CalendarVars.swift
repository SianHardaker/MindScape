//
//  CalendarVars.swift
//  MindScape
//
//  Created by Sian Hardaker on 08/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import Foundation

let date = Date()
let calendar = Calendar.current
let day = calendar.component(.day , from: date)
var weekday = calendar.component(.weekday , from: date) - 1
var month = calendar.component(.month , from: date) - 1
var year = calendar.component(.year , from: date)
