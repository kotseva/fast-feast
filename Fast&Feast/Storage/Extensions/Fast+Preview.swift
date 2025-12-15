//
//  Fast+Preview.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 13.12.25.
//

extension Fast {
  
  static let preview: Fast = {
    preview(mood: nil, note: nil)
  }()

  static func preview(mood: Int16?, note: String?) -> Fast {
    let fast = Fast(context: PersistenceController.preview.container.viewContext)
    fast.startDate = Date().dateByAdding(-1, .day).date
    fast.endDate = Date().dateByAdding(-8, .hour).date
    fast.targetInterval = 16.hours.timeInterval
    fast.mood = mood ?? 0
    fast.note = note
    return fast
  }
  
}
