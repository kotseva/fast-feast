//
//  ExportData.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 13.12.25.
//

import Foundation

/// Wrapper around a URL to handle exportable data. This conforms the URL to Identifiable
struct ExportData: Identifiable {
  let id: String
  let fileUrl: URL
  
  init(_ fileUrl: URL) {
    self.id = UUID().uuidString
    self.fileUrl = fileUrl
  }
  
}
