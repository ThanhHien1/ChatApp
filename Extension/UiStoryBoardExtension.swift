//
//  UiStoryBoardExtension.swift
//  Chat
//
//  Created by Thanh Hien on 11/04/2023.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    class func controller<T: UIViewController>(storyboard: StoryboardEnum) -> T {
        return UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: T.className) as! T
    }
    
    class func initial<T: UIViewController>(storyboard: StoryboardEnum) -> T {
        if let initial =  UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateInitialViewController() as? T {
            return initial
        }
        else {
            fatalError("Could not instantiate initial view controller from storyboard.")
        }
    }
    
    enum StoryboardEnum: String {
        case register = "Register"
        case home = "Home"
        case login = "Login"
        case profile = "Profile"
        case addFirends = "AddFriends"
        case convesation = "Convensation"
        case friendRquestListViewController = "FriendRequestList"
        case FriendList = "FriendList"
        
    }
}
