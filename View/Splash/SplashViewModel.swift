
//  SplashViewModel.swift
//  Chat
//
//  Created by Thanh Hien on 23/04/2023.
//

import Foundation
import FirebaseAuth

class SplashViewModel {
    
    func initialDataSplash(onMoveToRegister: @escaping () -> Void, onMoveToLogin: @escaping () -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            if Auth.auth().currentUser != nil {
                onMoveToLogin()
            } else {
                onMoveToRegister()
            }})
    }
}



