import SwiftUI
import PencilKit

enum PenType: String, CaseIterable {
    case pen
    case pencil
    case marker

    var inkType: PKInkingTool.InkType {
        switch self {
        case .pen: return .pen
        case .pencil: return .pencil
        case .marker: return .marker
        }
    }
}

struct CanvasRepresentable: UIViewRepresentable {
    var penColor: UIColor
    var penWidth: CGFloat
    var isErasing: Bool
    var penType: PenType

    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.drawingPolicy = .anyInput
        canvasView.backgroundColor = .white
        canvasView.tool = isErasing
            ? PKEraserTool(.vector)
            : PKInkingTool(penType.inkType, color: penColor, width: penWidth)
        return canvasView
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        uiView.tool = isErasing
            ? PKEraserTool(.vector)
            : PKInkingTool(penType.inkType, color: penColor, width: penWidth)
    }
}
