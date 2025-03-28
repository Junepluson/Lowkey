//  LowkeyApp.swift
//  Lowkey
//
//  Created by seongjun Hong on 3/28/25.
//
import SwiftUI

@main
struct LowkeyApp: App {
    init() {
        print("Lowkey started ✅")
        // 향후 초기 설정 or 세션 준비 등 가능
    }

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                PaletteHomeView()
            }
        }
    }
}
