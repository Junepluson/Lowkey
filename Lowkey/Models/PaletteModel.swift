//
//  PaletteModel.swift
//  Lowkey
//
//  Created by seongjun Hong on 3/28/25.
//

import Foundation

struct PaletteModel: Identifiable, Codable {
    let id: UUID
    let name: String
    let createdAt: Date

    init(name: String) {
        self.id = UUID()
        self.name = name
        self.createdAt = Date()
    }
}
