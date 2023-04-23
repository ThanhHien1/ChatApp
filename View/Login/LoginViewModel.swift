//
//  LoginViewModel.swift
//  Chat
//
//  Created by Vo Duc Phong on 23/04/2023.
//

import Foundation
import FirebaseAuth

class LoginViewModel{
    func login(_ email: String, _ password: String, onCompleted: @escaping () -> Void, onError: @escaping (String) -> Void){
        do { try Auth.auth().signOut()} catch {}
        Auth.auth().signIn(withEmail: email, password: password){ authResult, error in
            if(error != nil){
                onError(error?.localizedDescription ?? "")
            }else{
                onCompleted()
            }
        }
    }
}
