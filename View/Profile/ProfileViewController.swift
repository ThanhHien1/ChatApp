//
//  ProfileViewController.swift
//  Chat
//
//  Created by Thanh Hien on 25/04/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var TfEmail: UILabel!
    @IBOutlet weak var tfName: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    
    let viewModel = ProfileModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EditUimageService().addShadowAndRoundCorners(imageView: imageProfile)
        profile()
    }
    
    func profile() {
        viewModel.profile(completed: { [weak self] user in
            self?.tfName.text = user?.name
            self?.TfEmail.text = user?.email
            self?.imageProfile.load(urlString: user?.imageLink ?? "")
            }, onError: { _ in
            self.showAlert(title: "Error", message: "k hien thi profile")
            })
    }
    
    @IBAction func onLogout(_ sender: Any) {
        viewModel.logOut()
        let vc = UIStoryboard.initial(storyboard: .login)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
