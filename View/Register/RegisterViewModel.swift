
//  Auth.swift
//  Chat
//
//  Created by Thanh Hien on 16/04/2023.
//
import Foundation
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore

class RegisteViewModel {
    let db = Firestore.firestore()
    
    func register(_ name: String, _ email: String, _ password: String, image: UIImage?, onCompleted: @escaping () -> Void, onError: @escaping (String) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if (error != nil) {
                onError("Error during registration: \(String(describing: error?.localizedDescription))")
            } else if image == nil {
                let user = User(name: name, email: email, password: password)
                self.saveUser(user: user) {
                    onCompleted()
                } onError: { err in
                    onError("Error during registration: \(String(describing: err))")
                }
            } else if image != nil {
                self.upLoadImage(image) { result in
                    switch result {
                    case .success(let url):
                        let user = User( name: name, email: email, password: password, imageLink: url.absoluteString)
                        self.saveUser(user: user) {
                            onCompleted()
                        } onError: { err in
                            onError("Error during registration: \(String(describing: err))")
                        }
                    case .failure(let err):
                        onError("Error during registration: \(String(describing: err))")
                    }
                }
                
            }
            
        }
    }
    
    func upLoadImage(_ image: UIImage?, completion: @escaping (Result<URL, Error>) -> Void) {
       guard let image = image, let imageData = image.jpegData(compressionQuality: 0.3) else {
            let error = NSError(domain: "Hong co anh", code: 0, userInfo: nil)
            completion(.failure(error))
            return
        }
        let filename = UUID().uuidString
        let storageRef = Storage.storage().reference().child("Avatar/\(filename)")
        
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpeg"
        
        storageRef.putData(imageData, metadata: metadata) { (metadata, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            storageRef.downloadURL { (url, error) in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let url = url else {
                    let error = NSError(domain: "Invalid URL", code: 0, userInfo: nil)
                    completion(.failure(error))
                    return
                }
                completion(.success(url))
            }
        }
    }
    
    
    func saveUser(user: User, completed: @escaping () -> Void, onError: @escaping (String) -> Void) {
        guard let userID = Auth.auth().currentUser?.uid else { return }
        let dataUser = ["id": userID,
                        "name": user.name,
                        "email": user.email,
                        "password": user.password,
                        "imageLink": user.imageLink ?? ""]
        self.db.collection("User").document(userID).setData(dataUser, merge: true) { error in
            if let error = error {
                onError(error.localizedDescription)
            } else {
                completed()
            }
        }
    }
}
