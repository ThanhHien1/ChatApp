//
//  Auth.swift
//  Chat
//
//  Created by Thanh Hien on 16/04/2023.
//

import Foundation
import FirebaseAuth

class RegisteViewModel {
    func register(_ name: String, _ email: String, _ password: String, omCompleted: @escaping () -> Void, onError: @escaping (String) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if (error != nil) {
                onError(error?.localizedDescription ?? "")
            } else {
                omCompleted()
            }
        }
        
    }
}
