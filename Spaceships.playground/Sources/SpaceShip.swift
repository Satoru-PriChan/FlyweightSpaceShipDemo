import UIKit

public class SpaceShip {
    private var intrinsicState: SharedSpaceShipData
    private var position: (Float, Float, Float)
    
    public init(sharedData: SharedSpaceShipData, position: (Float, Float, Float)) {
        self.intrinsicState = sharedData
        self.position = position
    }
}

public class SharedSpaceShipData {
    private let mesh: [Float]
    private let texture: UIImage?
    
    public init(mesh: [Float], imageNamed name: String) {
        self.mesh = mesh
        self.texture = UIImage(named: name)
    }
}
