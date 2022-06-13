//
//  DatabaseManager.swift
//  InstaClone
//
//  Created by Ockiya Beinmonyu Daniel on 06.06.22.
//

import FirebaseDatabase


public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    ///Check if username and email is available
    /// -Parameters
    ///    - email : String representing email
    ///    - username : String representing username
    
    public func canCreateNewUser(with email: String, username: String, completion(Bool) -> Void) {
        
    }
    
}
