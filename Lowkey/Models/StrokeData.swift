import Foundation

struct StrokeData: Codable, Identifiable {
    var id = UUID()
    var points: [CGPoint]
}