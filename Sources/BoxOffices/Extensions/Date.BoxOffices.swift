//
//  Date.BoxOffices.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import Foundation

extension Date {
    var yesterday: Date? {
        Calendar.current.date(byAdding: .day, value: -1, to: self)
    }
}
