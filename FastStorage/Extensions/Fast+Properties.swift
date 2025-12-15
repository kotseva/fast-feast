//
//  Fast+Properties.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 20.11.25.
//

import Foundation

// Add additional helper properties on the Fast entity
public extension Fast {

  /// The progress of a fast as a percent value from 0..(1+)
  var progress: Double {
    return currentInterval / targetInterval
  }

  /// The current interval duration of the fast. If the fast has no `endDate`
  /// the interval is calculated based on the current date.
  var currentInterval: TimeInterval {
    let endDate = self.endDate ?? Date()
    let interval = endDate.timeIntervalSince(startDate!)
    return interval
  }
}
