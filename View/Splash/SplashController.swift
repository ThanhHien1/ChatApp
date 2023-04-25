//
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
            let vc = UIStoryboard.initial(storyboard: .auth)
            vc.modalPresentationStyle = .fullScreen
            self?.present(vc, animated: true)
        }
    }
    
}

