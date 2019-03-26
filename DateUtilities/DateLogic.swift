//
//  DateLogic.swift
//  Marathoner
//
//  Created by Jonathan Wong on 1/1/19.
//  Copyright © 2019 Jonathan Wong. All rights reserved.
//

import Foundation

public struct DateLogic {

    /// `Calculates` the number of weeks between two **dates**.
    ///
    /// - Parameters:
    ///   - from: The start date.
    ///   - to: The end date.
    /// - Returns: an `Int` of the number of weeks.
    public static func weeks(from: Date, to: Date) -> Int {
        let components = Calendar.current.dateComponents([.weekOfMonth], from: from, to: to)
        print("weeks: \(String(describing: components.weekOfMonth))")
        return components.weekOfMonth ?? 0
    }
    
    public static func validate(from: Date, to: Date) -> Bool {
        if from < to {
            return true
        } else {
            return false
        }
    }
}

