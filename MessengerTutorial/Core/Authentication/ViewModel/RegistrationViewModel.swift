//
//  RegistrationViewModel.swift
//  MessengerTutorial
//
//  Created by Mankuki_era on 2023/08/15.
//

import Foundation
import SwiftUI

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname)
    }
}
