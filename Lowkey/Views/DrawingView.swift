import SwiftUI
import PencilKit

struct DrawingView: View {
    let paletteID: UUID

    var body: some View {
        VStack(spacing: 0) {
            CanvasRepresentable()
                .navigationTitle("✍️ 드로잉 중")
                .navigationBarTitleDisplayMode(.inline)
        }
        .background(Color.white.ignoresSafeArea())
    }
}
