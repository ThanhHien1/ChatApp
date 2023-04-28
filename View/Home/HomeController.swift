//
//  HomeController.swift
//  Chat
//
//  Created by Thanh Hien on 23/04/2023.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onProfile(_ sender: Any) {
        let vc = UIStoryboard.initial(storyboard: .profile)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
