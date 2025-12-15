import Algorithms
import FastStorage
import Formatting
import Foundation

extension FastGroup {
  
  static func group(_ collection: [FastModel]) -> [FastGroup] {

    let grouped = Dictionary(grouping: collection, by: { $0.entity.chunkedIdentifier })
    let groups = grouped.compactMap { (identifier, collection) -> FastGroup? in
      guard !collection.isEmpty else { return nil }
      return FastGroup(title: identifier, fasts: collection)
    }
    
    return groups
  }
}

private extension Fast {
  
  var chunkedIdentifier: String {
    startDate!.formatted(.dateTime.month(.wide).year(.defaultDigits))
  }
  
}
