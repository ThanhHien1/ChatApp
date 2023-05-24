//
//  FriendListModel.swift
//  Chat
//
//  Created by Thanh Hien on 05/05/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


class FriendListModel {
    let currenUserID = Auth.auth().currentUser?.uid ?? ""
    var friendLists : [User] = []
    
    func showFriend(completed: @escaping ([User]) -> Void){
        let friendRef = Firestore.firestore().collection("Relationship").document(currenUserID)
        friendRef.getDocument() { (snapshot, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
            let friends = (snapshot?["friends"]  as? [String]) ?? []
            let dispatchGroup = DispatchGroup()
            for friend in friends {
                dispatchGroup.enter()
                let userFriend = Firestore.firestore().collection("User").document(friend)
                userFriend.getDocument() {(document, error) in
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                        dispatchGroup.leave()
                    }
                    let data = document?.data()
                    let user = User(id: data?["id"] as? String ?? "", name: data?["name"] as? String ?? "" , email: data?["email"] as? String ?? "" , password: data?["password"] as? String ?? "" , imageLink: data?["imageLink"] as? String ?? "")
                    self.friendLists.append(user)
                    print("user")
                    print(user)
                    dispatchGroup.leave()
                }
            }
            dispatchGroup.notify(queue: .main){
                completed(self.friendLists)
            }
        }
    }
}
