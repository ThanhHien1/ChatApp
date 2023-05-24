//
//  FriendRequestListCell.swift
//  Chat
//
//  Created by Thanh Hien on 04/05/2023.
//

import Foundation
import UIKit

protocol friendCellDelegate {
    func onClickCell(friendRequest: User, status: String)
}
class FriendRequestCell: UITableViewCell {
    
    @IBOutlet weak var imgsend: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    
    var friendRequest: User? = nil
    var delegate: friendCellDelegate? = nil
    
    func setFriendRequest(user: User) {
        lbName.text = user.name
        imgsend.load(urlString: user.imageLink ?? "")
    }
    
    @IBAction func btAccept(_ sender: Any) {
        if let friendRequest = friendRequest {
            delegate?.onClickCell(friendRequest: friendRequest, status: "accept")
        } else {
            print(friendRequest)
        }
        
    }

    @IBAction func btDelete(_ sender: Any) {
        print("nvsdjkzxvsdn")
        if let friendRequest = friendRequest {
            delegate?.onClickCell(friendRequest: friendRequest, status: "delete")
        } else {
            print(friendRequest)
        }
        
    }
}
