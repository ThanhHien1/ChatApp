//
//  UIViewControllerExtension.swift
//  Chat
//
//  Created by Thanh Hien on 25/04/2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }

    }
    

