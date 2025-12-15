//
//  File+Initialization.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 13.12.25.
//

import CoreData
import FastStorage
import Foundation
import Logging
import OSLog

extension Fast {
  
  convenience init(_ startDate: Date, endDate: Date? = nil, interval: TimeInterval, context: NSManagedObjectContext) {
    self.init(context: context)
    
    self.startDate = startDate
    self.endDate = endDate
    self.targetInterval = interval

    Logger.create(.coreData).trace("Fast Entity created")
  }
  
}
