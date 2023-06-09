//
//  OptionalExtension.swift
//  Chat
//
//  Created by Thanh Hien on 17/04/2023.
//

import Foundation

extension Optional {
  var isNone: Bool {
    return self == nil
  }
  
  var isSome: Bool {
    return self != nil
  }
}
