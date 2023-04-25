//
//  LoginController.swift
//  Chat
//
//  Created by Vo Duc Phong on 23/04/2023.
//

import UIKit

class LoginController: UIViewController {
    private let viewModel = LoginViewModel()

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var edtPassword: UITextField!
    @IBOutlet weak var edtEmail: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
    }
    
    @IBAction func onLogin(_ sender: Any) {
        guard let email = edtEmail.text else {return}
        guard let password = edtPassword.text else {return}
        indicator.isHidden = false
        viewModel.login(email, password, onCompleted: { [weak self] in
            self?.indicator.isHidden = true
            let vc = UIStoryboard.initial(storyboard: .home)
            vc.modalPresentationStyle = .fullScreen
            self?.present(vc, animated: true)
        }, onError: { [weak self] in
            self?.indicator.isHidden = true
            print($0)
        })
    }
}

extension LoginController {
    @IBAction func viewRegister(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .auth)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
