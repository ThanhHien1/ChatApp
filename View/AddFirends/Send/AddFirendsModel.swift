//
//  AddFirendsModel.swift
//  Chat
//
//  Created by Thanh Hien on 29/04/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth
import RxSwift

class AddFiendsViewModel {
    let currentUserID = Auth.auth().currentUser?.uid ?? ""
    var users: [User] = []
    var buttonStates: [String: Bool] = [:] // [buttonID: isSending]
    
    func showUsers(completed: @escaping ([User]) -> Void) {
        let usersCollectionRef = Firestore.firestore().collection("User")
        let sendRef = Firestore.firestore().collection("Relationship").document(currentUserID)
        sendRef.getDocument(){ (snapshot, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            let userReceiver = (snapshot?["receiver_send"] as? [String]) ?? []
            let userSend = (snapshot?["request_send"] as? [String]) ?? []
            let friends = (snapshot?["friends"] as? [String]) ?? []
            usersCollectionRef.getDocuments() { (snapshot, error) in
                if let error = error {
                    print("Error: \(error.localizedDescription)")
                    return
                }
                guard let documents = snapshot?.documents else {
                    print("K co user")
                    return
                }
                for document in documents {
                    if(document.documentID != self.currentUserID
                       && !userSend.contains(document.documentID)
                       && !friends.contains(document.documentID)
                       && !userReceiver.contains(document.documentID)
                    ){
                        let data = document.data()
                        let user = User(id: data["id"] as? String ?? "", name: data["name"] as? String ?? "" , email: data["email"] as? String ?? "" , password: data["password"] as? String ?? "" , imageLink: data["imageLink"] as? String ?? "")
                        self.users.append(user)
                    }
                }
                completed((self.users))
            }
        }
        
    }
    
    
    func sendFriendRequest(receiverID: String, onCompleted: @escaping () ->Void) {
        let sendRef = Firestore.firestore().collection("Relationship").document(currentUserID)
        sendRef.setData(["request_send": FieldValue.arrayUnion([receiverID])], merge: true) {error in
            if let error = error {
                print("error: \(error.localizedDescription)")
            } else {
                let receiverRef = Firestore.firestore().collection("Relationship").document(receiverID)
                receiverRef.setData(["receiver_send": FieldValue.arrayUnion([self.currentUserID])], merge: true){ error in
                    if let error = error {
                        print("error: \(error.localizedDescription)")
                    } else {
                        print("gui thanh cong ")
                        onCompleted()
                    }
                }
            }
        }
    }
    func loadStateFromFirestore(receiverID: String,  buttonStates: UIButton) {
        GetID().getID(completed: {id in
            if let id = id {
                let friendRequestRef = Firestore.firestore().collection("FriendLists")
                    .whereField("senderID", isEqualTo: id)
                    .whereField("receiverID", isEqualTo: receiverID)
                    .whereField("status", isEqualTo: "sent")
                friendRequestRef.getDocuments() { (snapshot, error) in
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                    }
                    guard let snapshot = snapshot, snapshot.isEmpty else {
                        print("you have sent a friend request to user")
                        return
                    }
                    
                    buttonStates.backgroundColor = UIColor.green
                    buttonStates.setTitle("sending", for: .normal)
                }
            }
        })
    }
    
}

enum FriendRequestStatus: String {
   case add
   case sent
}
