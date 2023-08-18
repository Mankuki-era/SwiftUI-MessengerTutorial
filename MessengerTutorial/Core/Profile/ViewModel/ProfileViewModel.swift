//
//  ProfileViewModel.swift
//  MessengerTutorial
//
//  Created by Mankuki_era on 2023/08/09.
//

import Foundation
import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var profileImage: Image?
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { try await loadItem() } }
    }
    
    func loadItem() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
}
