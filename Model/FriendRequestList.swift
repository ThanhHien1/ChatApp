//
//  ListFriends.swift
//  Chat
//
//  Created by Thanh Hien on 02/05/2023.
//

import Foundation

struct FriendRequestList {
    let receiverID :String
    let senderID: String
    var status: String
    
    init(receiverID: String, senderID: String, status: String) {
        self.receiverID = receiverID
        self.senderID = senderID
        self.status = status
    }
}

extension FriendRequestList {
    func toDictionaryFL() -> [String: Any] {
        return [
            "receiverID" : receiverID,
            "status": status,
            "senderID": senderID
        ]
    }
}
