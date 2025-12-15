//
//  AppTarget.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 13.12.25.
//

import Foundation

public enum AppTarget: String, CaseIterable {
  case app
  case siriExtension
}

extension AppTarget: ContextNaming {
  
  var tranactionAuthor: String {
    switch self {
    case .app:
      return "main_app"
      
    case .siriExtension:
      return "siri_extension"
    }
  }
  
  var contextName: String? {
    return nil
  }
  
}
