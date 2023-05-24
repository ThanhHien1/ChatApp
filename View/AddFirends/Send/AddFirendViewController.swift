//
//  AddFirendViewController.swift
//  Chat
//
//  Created by Thanh Hien on 29/04/2023.
//

import UIKit
import RxSwift
import RxCocoa

class AddFirendViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewAddFiends: UITableView!
    @IBOutlet weak var iLoadUser: UIActivityIndicatorView!
    
    let viewModel = AddFiendsViewModel()
    var users: [User] = []
    var btAddFriend: UIButton? =  UIButton()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showUser()
        tableViewAddFiends.delegate = self
        tableViewAddFiends.dataSource = self
    }
    
    
    // click cell
    func onAddFriendClick(user: User, btAddFriend: UIButton ) {
        viewModel.sendFriendRequest(receiverID: user.id ?? "", onCompleted: {
            self.users.removeAll(where: {$0.id == user.id})
            self.tableViewAddFiends.reloadData()
        })
    }
    
    func showUser() {
        iLoadUser.isHidden = false
        viewModel.showUsers(completed: { [weak self] user in
            self?.iLoadUser.isHidden = true
            self?.users += user
            self?.tableViewAddFiends.reloadData()
            print(user.map({$0.name}))
        })
    }
    
    @IBAction func Back(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension AddFirendViewController: UITableViewDelegate, UITableViewDataSource, userCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCellAddFriend
        cell.user = users[indexPath.row]
        cell.setUser(user: users[indexPath.row])
        cell.delegate = self
        return cell
    }
}
