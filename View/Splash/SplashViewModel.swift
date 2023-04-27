//
//  SplashViewModel.swift
//  Chat
//
//  Created by Vo Duc Phong on 23/04/2023.
//

import Foundation
import FirebaseAuth

class SplashViewModel {
    
    func initialDataSplash( onCompleted: @escaping () -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            onCompleted()
        })
    }
    
    func CheckLogin() -> Bool {
        if Auth.auth().currentUser != nil {
            return true
        } else {
            return false
        }
    }
}




