//
//  FriendListCell.swift
//  Chat
//
//  Created by Thanh Hien on 05/05/2023.
//

import Foundation
import UIKit

class FriendListCell: UITableViewCell {
    
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    
    func getFriendList(friend: User) {
        lbName.text = friend.name
        imgAvatar.load(urlString: friend.imageLink ?? "")
        
    }
}
