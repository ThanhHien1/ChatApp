//
//  User.swift
//  Chat
//
//  Created by Thanh Hien on 26/04/2023.
//

import Foundation

struct User{
    var id : String?
    var name: String
    var email: String
    var password: String
    var imageLink: String?
    
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.password = password
    }
    
    init(name: String, email: String, password: String, imageLink: String?) {
        self.name = name
        self.email = email
        self.password = password
        self.imageLink = imageLink
    }
    
    init(id: String, name: String, email: String, password: String, imageLink: String?) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        self.imageLink = imageLink
    }
    
}

extension User {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case email
        case password
        case imageLink
    }
    
    func toDictionary() -> [String: Any] {
        return [
               "id": id,
               "name": name,
               "email": email,
               "password": password,
               "imageLink": imageLink ?? ""
]
    }
}
