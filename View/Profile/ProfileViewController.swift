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
        profile()
    }
    
    func profile() {
        //tfName.text = viewModel.user.name
    }
    
    @IBAction func onLogout(_ sender: Any) {
        viewModel.logOut()
        let vc = UIStoryboard.initial(storyboard: .login)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
}
