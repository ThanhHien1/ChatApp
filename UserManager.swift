//
//  UserManager.swift
//  Chat
//
//  Created by Thanh Hien on 16/04/2023.
//

import UIKit

class UserManager {
    
    func update(user: ObjectUser, completion: @escaping CompletionObject<FireStoreReponse>) {
        FirestorageService().update(user, reference: .users) {
            response in switch response {
            case .failure:
                completion(.failure)
            case .success:
                FireStoreService().update(user, reference: .init(location: .users), completion: { result in
                          completion(result)
                        })
                
           
            }
        }
    }
}
