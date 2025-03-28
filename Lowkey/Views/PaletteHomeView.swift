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
                .padding(.horizontal)
                .padding(.top)

                if manager.palettes.isEmpty {
                    Spacer()
                    Text("팔레트를 추가해보세요!")
                        .foregroundColor(.gray)
                    Spacer()
                } else {
                    List {
                        ForEach(manager.palettes) { palette in
                            NavigationLink(destination: DrawingView(paletteID: palette.id)) {
                                VStack(alignment: .leading) {
                                    Text(palette.name)
                                        .font(.headline)
                                    Text(palette.createdAt, style: .date)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                .padding(.vertical, 4)
                            }
                        }
                    }
                    .listStyle(.plain)
                }
            }
        }
        .onAppear {
            manager.loadPalettes()
        }
    }
}
