import UIKit

public class SpaceShip {
    private let mesh: [Float]
    private let texture: UIImage?
    private var position: (Float, Float, Float)
    
    public init(mesh: [Float], imageNamed name: String, position: (Float, Float, Float)) {
        self.mesh = mesh
        self.texture = UIImage(named: name)
        self.position = position
    }
}
