//
//  PaletteHomeView.swift
//  Lowkey
//
//  Created by seongjun Hong on 3/28/25.
//

import SwiftUI

struct PaletteHomeView: View {
    @StateObject private var manager = PaletteManager()

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("내 팔레트")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: {
                        manager.createNewPalette()
                    }) {
                        Image(systemName: "plus")
                            .font(.title2)
                            .padding(10)
                    }
                }
                .padding()

                List {
                    ForEach(manager.palettes) { palette in
                        NavigationLink(destination: DrawingView(paletteID: palette.id)) {
                            Text(palette.name)
                        }
                    }
                }
            }
            .onAppear {
                manager.loadPalettes()
            }
        }
    }
}
