//
//  PaletteManager.swift
//  Lowkey
//
//  Created by seongjun Hong on 3/28/25.
//

import Foundation

class PaletteManager: ObservableObject {
    @Published var palettes: [PaletteModel] = []

    private let saveKey = "SavedPalettes"

    func loadPalettes() {
        guard let data = UserDefaults.standard.data(forKey: saveKey),
              let decoded = try? JSONDecoder().decode([PaletteModel].self, from: data) else {
            return
        }
        self.palettes = decoded
    }

    func savePalettes() {
        if let encoded = try? JSONEncoder().encode(palettes) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }

    func createNewPalette() {
        let new = PaletteModel(name: "새 팔레트 \(palettes.count + 1)")
        palettes.append(new)
        savePalettes()
    }
}
