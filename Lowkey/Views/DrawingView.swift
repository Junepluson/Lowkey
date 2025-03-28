import SwiftUI

struct DrawingView: View {
    let paletteID: UUID  // ✅ 이 부분 추가

    var body: some View {
        Text("Drawing for palette: \(paletteID.uuidString)")
            .padding()
    }
}
