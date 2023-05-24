//
//  GetID.swift
//  Chat
//
//  Created by Thanh Hien on 04/05/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class GetID {
    let currentUserID = Auth.auth().currentUser?.uid ?? ""
    
    func getID(completed: @escaping (String?) -> Void) {
        let idRef = Firestore.firestore().collection("User").document(currentUserID)
        idRef.getDocument() {(snapshot, error) in
            if let error = error {
                print("error: \(error.localizedDescription)")
            }
            guard let snapshot = snapshot, snapshot.exists else {
                print("K co loi moi")
                return
            }
            let id = snapshot.data()?["id"]  as? String
            completed(id)
        }
        
    }
}
