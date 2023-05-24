//
//  FriendRquestListViewController.swift
//  Chat
//
//  Created by Thanh Hien on 04/05/2023.
//

import UIKit

class FriendRequestListViewController: UIViewController {

    @IBOutlet weak var tbViewSend: UITableView!
    
    let viewModel = FriendRequestModel()
    var friendRequestList: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbViewSend.delegate = self
        tbViewSend.dataSource = self
        showRequestFriendList()

        // Do any additional setup after loading the view.
    }
    
    func showRequestFriendList(){
        viewModel.receiverFriendRequest(completed: {[weak self] userSend in
            self?.friendRequestList += userSend
            print(userSend.map({$0.name}))
            self?.tbViewSend.reloadData()
        })
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func onClickCell(friendRequest: User, status: String) {
        if status == "accept" {
            viewModel.acceptFriendRequest(senderID: friendRequest.id, onAccept: {
                self.friendRequestList.removeAll(where: { $0.id == friendRequest.id })
                self.tbViewSend.reloadData()
            })
            self.tbViewSend.reloadData()
        } else if status == "delete"{
            viewModel.deleteRequestFriend(senderID: friendRequest.id, onDelete: {
                self.friendRequestList.removeAll(where: { $0.id == friendRequest.id })
                self.tbViewSend.reloadData()
            })
            self.tbViewSend.reloadData()
        } else {
            print("hk")
        }
    }
}

extension FriendRequestListViewController: UITableViewDelegate, UITableViewDataSource, friendCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendRequestList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellRequest", for: indexPath) as! FriendRequestCell
        cell.friendRequest = friendRequestList[indexPath.row]
        cell.setFriendRequest(user: friendRequestList[indexPath.row])
        cell.delegate = self
        return cell
    }
}
