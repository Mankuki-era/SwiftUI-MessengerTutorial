//
//  User.swift
//  MessengerTutorial
//
//  Created by Mankuki_era on 2023/08/09.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Identifiable, Hashable, Codable {
    @DocumentID var uid: String?
    let email: String
    let fullname: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
    
    var firstName: String {
        let formatter = PersonNameComponentsFormatter()
        let components = formatter.personNameComponents(from: fullname)
        return components?.givenName ?? fullname
    }
}

extension User {
    static let MOCK_USER = User(email: "batman@gmail.com", fullname: "Bruce Wayne", profileImageUrl: "batman")
}
