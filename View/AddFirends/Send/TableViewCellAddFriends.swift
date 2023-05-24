//
//  TableViewCellAddFriends.swift
//  Chat
//
//  Created by Thanh Hien on 30/04/2023.
//

import Foundation
import UIKit

protocol userCellDelegate {
    func onAddFriendClick(user: User, btAddFriend: UIButton) -> Void
}

class TableViewCellAddFriend:
    UITableViewCell {
    
    @IBOutlet weak var ivAvatar: UIImageView!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btAddFirend: UIButton!
    
    var delegate : userCellDelegate? = nil
    var user: User? = nil
    
    func setUser(user: User) {
        lbName.text = user.name
        ivAvatar.load(urlString: user.imageLink ?? "")
    }
    @IBAction func onAddFriends(_ sender: Any) {
        if let s = user {
            delegate?.onAddFriendClick(user: s, btAddFriend: btAddFirend)
        } else {
            print(user)
        }
    }
    
}
