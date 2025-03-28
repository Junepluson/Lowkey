//
//  PaletteManager.swift
//  Lowkey
//
//  Created by seongjun Hong on 3/28/25.
//

import Foundation

class PaletteManager: ObservableObject {
    @Published var palettes: [PaletteModel] = []

    func loadPalettes() {
        // UserDefaults 또는 FileManager로부터 로드
        // (임시 데이터 예시)
        self.palettes = []
    }

    func createNewPalette() {
        let new = PaletteModel(name: "새 팔레트 \(palettes.count + 1)")
        palettes.append(new)
        // 저장 로직은 추후 구현
    }
}
