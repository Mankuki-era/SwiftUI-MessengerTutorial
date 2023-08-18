//
//  Route.swift
//  MessengerTutorial
//
//  Created by Mankuki_era on 2023/08/18.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
