
//  SplashViewModel.swift
//  Chat
//
//  Created by Thanh Hien on 23/04/2023.
//

import Foundation
import FirebaseAuth

class SplashViewModel {
    
    func initialDataSplash(onMoveToHome: @escaping () -> Void, onMovetoLogin: @escaping () -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            if Auth.auth().currentUser != nil {
                onMoveToHome()
            } else {
                onMovetoLogin()
            }})
    }
}



