import SwiftUI
import PencilKit

struct DrawingView: View {
    let paletteID: UUID

    @State private var penColor: Color = .black
    @State private var penWidth: CGFloat = 5.0
    @State private var isErasing: Bool = false
    @State private var selectedPenType: PenType = .pen

    var body: some View {
        VStack(spacing: 0) {
            CanvasRepresentable(
                penColor: UIColor(penColor),
                penWidth: penWidth,
                isErasing: isErasing,
                penType: selectedPenType
            )
            .navigationTitle("✍️ 드로잉 중")
            .navigationBarTitleDisplayMode(.inline)

            Divider()

            HStack {
                Toggle(isOn: $isErasing) {
                    Image(systemName: isErasing ? "eraser.fill" : "pencil.tip")
                }
                .toggleStyle(.button)
                .frame(width: 44)

                Picker("Pen Type", selection: $selectedPenType) {
                    ForEach(PenType.allCases, id: \.self) { type in
                        Text(type.rawValue.capitalized)
                    }
                }
                .pickerStyle(.segmented)

                ColorPicker("", selection: $penColor)
                    .labelsHidden()
                    .frame(width: 44)

                Slider(value: $penWidth, in: 1...20) {
                    Text("Width")
                }
            }
            .padding()
        }
        .background(Color.white.ignoresSafeArea())
    }
}
