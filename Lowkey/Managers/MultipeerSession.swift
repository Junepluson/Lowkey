import Foundation
import MultipeerConnectivity

class MultipeerSession: NSObject, ObservableObject {
    private let myPeerId = MCPeerID(displayName: UIDevice.current.name)
    // 기본 세션 구성 예시
}
