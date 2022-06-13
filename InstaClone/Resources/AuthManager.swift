//
//  AuthManager.swift
//  InstaClone
//
//  Created by Ockiya Beinmonyu Daniel on 06.06.22.
//

import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()
    
    //register new user
    public func registerNewUser(username: String, email: String, password: String){
       //check if email, username is available
       // create account and add to database
        
        
    }
    
    //login new user
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        if let email = email {
            // Email login
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil, error == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }
        
        else if let username = username {
            // Username login
            print(username)
        }
    }

    
}
