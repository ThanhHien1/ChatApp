//
//  ProfileViewModel.swift
//  Chat
//
//  Created by Thanh Hien on 25/04/2023.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseFirestore

class ProfileModel {
    var currentUser: User? = nil
    
    func profile(completed: @escaping (User?) -> Void, onError: @escaping (String) -> Void) {
        guard let userID = Auth.auth().currentUser?.uid else { return }
        let docRef = Firestore.firestore().collection("User").document(userID)
        docRef.getDocument() { [weak self] (document, error) in
            guard let self = self else {return}
            if let document = document, document.exists {
                let data = document.data()
                let user = User( name: data?["name"] as? String ?? "" , email: data?["email"] as? String ?? "" , password: data?["password"] as? String ?? "" , imageLink: data?["imageLink"] as? String ?? "")
                print(user)
                self.currentUser = user
                completed(user)
            } else {
                onError("error: \(error?.localizedDescription)")
            }
        }
        
    }
    
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch {
        }
    }
}
