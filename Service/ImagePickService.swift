//
//  imagePickService.swift
//  Chat
//
//  Created by Thanh Hien on 26/04/2023.
//

import Foundation
import UIKit

class ImagePickService: UIImagePickerController, UINavigationController {
    func imagePickerController(_ picker : UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[.originalImage] as? UIImage else {
            showAlert(title: "Error", message: "Khong the chon anh")
            return
        }
        selectedImage = image
        imgRegister.image = image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
