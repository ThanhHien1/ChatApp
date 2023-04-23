//
//  ViewController.swift
//  Chat
//
//  Created by Thanh Hien on 11/04/2023.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = UIStoryboard.initial(storyboard: .auth)
        vc.modalPresentationStyle = .fullScreen
       present(vc, animated: true)
    }


}

