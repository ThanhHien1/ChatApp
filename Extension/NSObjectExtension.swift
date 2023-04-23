//
//  ObjectExtension.swift
//  Chat
//
//  Created by Thanh Hien on 11/04/2023.
//

import Foundation
extension NSObject {
    class var className: String {
        return String(describing: Self.self)
    }
}
