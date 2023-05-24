//
//  EditUimageService.swift
//  Chat
//
//  Created by Thanh Hien on 28/04/2023.
//

import Foundation
import UIKit

class EditUimageService {
    func addShadowAndRoundCorners(imageView: UIImageView) {
        imageView.layer.cornerRadius = imageView.bounds.width / 2
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.shadowColor = UIColor.lightGray.cgColor
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        imageView.layer.shadowRadius = 2.0
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
    }

}
