//
//  SplashViewModel.swift
//  Chat
//
//  Created by Vo Duc Phong on 23/04/2023.
//

import Foundation

class SplashViewModel{
    func initialDataSplash( onCompleted: @escaping () -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            onCompleted()
        })
    }
}
