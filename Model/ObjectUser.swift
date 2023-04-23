//
//  ObjectUser.swift
//  Chat
//
//  Created by Thanh Hien on 13/04/2023.
//

import Foundation
import FirebaseStorage

class ObjectUser{
    
    var id = UUID().uuidString
    var name: String?
    var email: String?
    var password: String?
    var profilePic: UIImage?
    var profilePicLink: String?
    
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: CodingKeys.id)
        try container.encodeIfPresent(name, forKey: CodingKeys.name)
        try container.encodeIfPresent(email, forKey: CodingKeys.email)
        try container.encodeIfPresent(profilePicLink, forKey: CodingKeys.profilePicLink)
    }
    
    
    init() {}
    
    public required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        email = try container.decode(String.self, forKey: .email)
        profilePicLink = try container.decode(String.self, forKey: .profilePicLink)
    }
    
    
}

extension ObjectUser {
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case email
        case profilePicLink
    }
}
