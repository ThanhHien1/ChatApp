//
//  AuthViewController.swift
//  Chat
//
//  Created by Thanh Hien on 11/04/2023.
//

import UIKit

class AuthViewController: UIViewController {
    @IBOutlet weak var imgRegister: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var indicatorRegister: UIActivityIndicatorView!
    
    let viewModel = AuthViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicatorRegister.isHidden = true
    }

    @IBAction func onRegister(_ sender: Any) {
        guard let name = tfName.text, name.count >= 1 else {
            showAlert(message: "Enter name")
            return
           }
        guard let email = tfEmail.text, email.count >= 1 else {
            showAlert(message: "Enter email")
            return
           }
        guard let password = tfPassword.text, password.count >= 6 else {
            showAlert(message: "Passwords must be at least 6 characters")
            return
           }
        indicatorRegister.isHidden = false
        viewModel.register(name, email, password, omCompleted: {[weak self] in
            let vc = UIStoryboard.initial(storyboard: .home)
            vc.modalPresentationStyle = .fullScreen
            self?.present(vc, animated: true)
        }, onError: { [weak self ] in
            self?.indicatorRegister.isHidden = true
            print($0)
        })
    }
}

extension AuthViewController {

    @IBAction func switchView(_ sender: Any) {
            let vc = UIStoryboard.initial(storyboard: .login)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        
    }
    
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}


