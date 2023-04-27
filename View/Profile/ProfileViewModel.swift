//
//  ProfileViewModel.swift
//  Chat
//
//  Created by Thanh Hien on 25/04/2023.
//

import Foundation
import FirebaseAuth
import Firebase

class ProfileModel {
    
    func profile( completion: @escaping (Result<User,Error>) -> Void) {
        //chưa xong á
//        let id = Auth.auth().currentUser!.uid
//        Firestore.firestore().collection("User").document(id).getDocument { document, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//            guard let document = document, document.exists, let data = document.data() else {
//                let error = NSError(domain: "Invalid user data", code: 0, userInfo: nil)
//                completion(.failure(error))
//                return
//            }
//            let user = User(
//                name: data["name"] as! String,
//                email: data["email"] as! String,
//                password: data["password"] as! String,
//                imageLink: data["imageLink"] as! String
//            )
//            completion(.success(user))
//        }
    }
    
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch {
        }
    }
}
