//
//  FriendListViewController.swift
//  Chat
//
//  Created by Thanh Hien on 05/05/2023.
//

import UIKit

class FriendListViewController: UIViewController {

    @IBOutlet weak var tbLFriendList: UITableView!
    
    let viewModel = FriendListModel()
    var friendList: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShowFriendList()
        tbLFriendList.delegate = self
        tbLFriendList.dataSource = self
    }
    
    func ShowFriendList() {
        viewModel.showFriend(completed: {[weak self] user in
            self?.friendList += user
            self?.tbLFriendList.reloadData()
            print(user.map({$0.name}))
        })
    }
    

    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension FriendListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "FriendListCell", for: indexPath) as! FriendListCell
        cell.getFriendList(friend: friendList[indexPath.row])
        return cell
    }
    
    
}
