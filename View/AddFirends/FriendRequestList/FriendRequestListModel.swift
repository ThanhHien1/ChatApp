//
//  FriendRequestListModel.swift
//  Chat
//
//  Created by Thanh Hien on 04/05/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class FriendRequestModel {
    let currentUserID = Auth.auth().currentUser?.uid ?? ""
    var userSendsList: [User] = []
    
    func receiverFriendRequest(completed: @escaping ([User]) -> Void) {
        let receiverRef = Firestore.firestore().collection("Relationship").document(currentUserID)
        receiverRef.getDocument() {(snapshot, error) in
            if let error = error {
                print("error \(error.localizedDescription)")
                return
            } else {
                let userSends = (snapshot?["receiver_send"] as? [String]) ?? []
                let dispatchGroup = DispatchGroup()
                for userSend in userSends {
                    dispatchGroup.enter()
                    let userSendRef = Firestore.firestore().collection("User").document(userSend)
                    userSendRef.getDocument() {(document, error) in
                        if let error = error {
                            print("error \(error.localizedDescription)")
                            dispatchGroup.leave()
                            return
                        }
                        let data = document?.data()
                        let user = User(id: data?["id"] as? String ?? "", name: data?["name"] as? String ?? "" , email: data?["email"] as? String ?? "" , password: data?["password"] as? String ?? "" , imageLink: data?["imageLink"] as? String ?? "")
                        self.userSendsList.append(user)
                        print(user)
                        dispatchGroup.leave()
                    }
                }
                dispatchGroup.notify(queue: .main){
                    completed(self.userSendsList)
                }
            }
        }
    }
    
    
    func acceptFriendRequest(senderID: String?, onAccept: @escaping () -> Void) {
        let receiverRef = Firestore.firestore().collection("Relationship").document(currentUserID)
        receiverRef.setData(["friends": FieldValue.arrayUnion([senderID ?? ""])], merge: true) {error in
            if let error = error {
                print("error \(error.localizedDescription)")
                return
            } else {
                receiverRef.updateData(["receiver_send": FieldValue.arrayRemove([senderID ?? ""])])
                let senderRef = Firestore.firestore().collection("Relationship").document(senderID ?? "")
                senderRef.setData(["friends": FieldValue.arrayUnion([self.currentUserID])], merge: true) {error in
                    if let error = error {
                        print("error \(error.localizedDescription)")
                        return
                    } else {
                        senderRef.updateData(["request_send": FieldValue.arrayRemove([self.currentUserID])]) { error in
                            if let error = error {
                                print("error \(error.localizedDescription)")
                            } else {
                                print("accept thanh cong")
                                onAccept()
                            }
                        }
                    }
                }
            }
        }
    }
    
    func deleteRequestFriend(senderID: String?, onDelete: @escaping () -> Void) {
        let acceptRef = Firestore.firestore().collection("Relationship").document(currentUserID)
        acceptRef.updateData(["receiver_send": FieldValue.arrayRemove([senderID ?? ""])]) {error in
            if let error = error {
                print("error \(error.localizedDescription)")
                return
            } else {
                let sendRef = Firestore.firestore().collection("Relationship").document(senderID ?? "")
                sendRef.updateData(["request_send": FieldValue.arrayRemove([self.currentUserID])]) {error in
                    if let error = error {
                        print("error \(error.localizedDescription)")
                        return
                    } else {
                        print("delete thanh cong")
                        onDelete()
                    }
                }
            }
        }
    }
}
