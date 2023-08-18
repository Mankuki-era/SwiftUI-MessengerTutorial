//
//  LoginViewModel.swift
//  MessengerTutorial
//
//  Created by Mankuki_era on 2023/08/15.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
