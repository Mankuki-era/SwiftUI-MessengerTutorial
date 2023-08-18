//
//  Constants.swift
//  MessengerTutorial
//
//  Created by Mankuki_era on 2023/08/17.
//

import Foundation
import Firebase

struct FirestoreConstants {
    static let UsersCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
