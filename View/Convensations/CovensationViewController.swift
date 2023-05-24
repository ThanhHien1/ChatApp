//
//  CovensationViewController.swift
//  Chat
//
//  Created by Thanh Hien on 28/04/2023.
//

import UIKit

class CovensationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onProfile(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .profile)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func onAddFirend(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .addFirends)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
    @IBAction func onFirendRequestList(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .friendRquestListViewController)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func onFriendList(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .FriendList)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}



extension ConvensationViewModel {
    
    
}
