
//  AuthViewController.swift
//  Chat
//
//  Created by Thanh Hien on 11/04/2023.
//

import UIKit

class RegisterViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var imgRegister: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var indicatorRegister: UIActivityIndicatorView!
    
    @IBOutlet weak var btChooseImage: UIButton!
    let viewModel = RegisteViewModel()
    private var selectedImage: UIImage?
    private let imageService = ImagePickService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicatorRegister.isHidden = true
        imageService.onPickerCompleted = {image in
            self.selectedImage = image
            self.imgRegister.image = image
        }
    }
    
    @IBAction func onRegister(_ sender: Any) {
        guard let name = tfName.text, !name.isEmpty else {
            showAlert(title: "Error", message: "Enter your name")
            return
        }
        guard let email = tfEmail.text, !email.isEmpty else {
            showAlert(title: "Error", message: "Enter your email")
            return
        }
        guard let password = tfPassword.text, password.count >= 6 else {
            showAlert(title: "Error", message: "Passwords must be at least 6 characters")
            return
        }
        indicatorRegister.isHidden = false
        viewModel.register(name, email, password, image: selectedImage, onCompleted: {
            self.indicatorRegister.isHidden = true
            let vc = UIStoryboard.initial(storyboard: .home)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }, onError: {_ in
            self.showAlert(title: "Error", message: "Email invalidate")
        })
    }
}

extension RegisterViewController {
    
    @IBAction func switchView(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .login)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    // upload image
    @IBAction func upLoadImage(_ sender: Any) {
        imageService.sourceType = .photoLibrary
        present(imageService, animated: true)
    }
}
