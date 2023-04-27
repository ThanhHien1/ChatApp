
//  ViewController.swift
//  Chat
//
//  Created by Thanh Hien on 11/04/2023.
//

import UIKit

class SplashController: UIViewController {
    private let viewModel = SplashViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        observerViewModel()
    }
    
    private func observerViewModel(){
        viewModel.initialDataSplash {[weak self] in
            if self?.viewModel.CheckLogin() ?? false {
                let vc = UIStoryboard.initial(storyboard: .home)
                vc.modalPresentationStyle = .fullScreen
                self?.present(vc, animated: true)
            } else {
                let vc = UIStoryboard.initial(storyboard: .register)
                vc.modalPresentationStyle = .fullScreen
                self?.present(vc, animated: true)
            }
        }
        
    }
}

