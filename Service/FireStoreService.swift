//
//  FireStoreService.swift
//  Chat
//
//  Created by Thanh Hien on 17/04/2023.
//

import Foundation
import FirebaseFirestore
import Firebase

class FireStoreService {
    
    func update<T>(_ object: T, reference: Reference, completion: @escaping CompletionObject<FireStoreReponse>) where T: firecodable {
        guard let data = object.values else { completion(.failure); return }
        reference.reference().document(object.id).setData(data, merge: true) { (error) in
            guard let _ = error else { completion(.success); return }
            completion(.failure)
        }
    }
    
    struct Reference {
        
        private let locations: [FirestoreCollectionReference]
        private let documentID: String
        
        init(location: FirestoreCollectionReference) {
            self.locations = [location]
            self.documentID = ""
        }
        
        init(first: FirestoreCollectionReference, second: FirestoreCollectionReference, id: String) {
            self.locations = [first, second]
            self.documentID = id
        }
        
        func reference() -> CollectionReference {
            let ref = Firestore.firestore()
            guard locations.count == 2 else {
                return ref.collection(locations.first!.rawValue)
            }
            return ref.collection(locations.first!.rawValue).document(documentID).collection(locations.last!.rawValue)
        }
    }
}
