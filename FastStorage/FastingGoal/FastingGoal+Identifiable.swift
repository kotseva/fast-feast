//
//  FastingGoal+Identifiable.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 20.11.25.
//

import Foundation

extension FastingGoal: Identifiable {
  
  public var id: TimeInterval { duration }
  
}
