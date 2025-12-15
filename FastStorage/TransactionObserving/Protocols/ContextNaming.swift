//
//  ContextNaming.swift
//  Fast&Feast
//
//  Created by Angela Koceva on 15.12.25.
//

import Foundation

protocol ContextNaming {
  var tranactionAuthor: String { get }
  var contextName: String? { get }
}
