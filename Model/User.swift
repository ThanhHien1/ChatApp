//
//  User.swift
//  Chat
//
//  Created by Thanh Hien on 26/04/2023.
//

import Foundation

struct User{
    var id = UUID().uuidString
    var name: String
    var email: String
    var password: String
    var imageLink: String?
    
    init( name: String, email: String, password: String) {
        self.id = UUID().uuidString
        self.name = name
        self.email = email
        self.password = password
    }
    
    init( name: String, email: String, password: String, imageLink: String?) {
      //  self.id = UUID().uuidString
        self.name = name
        self.email = email
        self.password = password
        self.imageLink = imageLink
    }
    
    //    func encode(to encoder: Encoder) throws {
    //        var container = encoder.container(keyedBy: CodingKeys.self)
    //        try container.encode(id, forKey: CodingKeys.id)
    //        try container.encode(name, forKey: CodingKeys.name)
    //        try container.encode(email, forKey: CodingKeys.email)
    //        try container.encode(password, forKey: CodingKeys.password)
    //        try container.encode(imageLink, forKey: CodingKeys.imageLink)
    //    }
    //
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//         id = try container.decode(String.self, forKey: .id)
//         name = try container.decode(String.self, forKey: .name)
//         email = try container.decode(String.self, forKey: .email)
//         password = try container.decode(String.self, forKey: .password)
//         imageLink = try container.decode(String.self, forKey: .imageLink)
//    }
}

extension User {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case email
        case password
        case imageLink
    }
}
