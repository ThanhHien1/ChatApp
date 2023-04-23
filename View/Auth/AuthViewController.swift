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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension AuthViewController {
//    @IBAction func register(_ sender: Any) {
//           guard let name = tfName.text, let email = tfEmail.text, let password = tfPassword.text else {
//               return
//           }
//           guard !name.isEmpty else {
//               //separatorViews.filter({$0.tag == 2}).first?.backgroundColor = .red
//               return
//           }
//           guard email.isValidEmail() else {
//               //separatorViews.filter({$0.tag == 3}).first?.backgroundColor = .red
//               return
//           }
//           guard password.count > 5 else {
//               //separatorViews.filter({$0.tag == 4}).first?.backgroundColor = .red
//               return
//           }
////           view.endEditing(true)
//           //ThemeService.showLoading(true)
//           viewModel.register(name: name, email: email, password: password, profilePic: selectedImage, complete: {[weak self ] in self?.showAlert()}, error: {[weak self] message in self?.dismiss(animated: true)})
//       }

    
    
}
