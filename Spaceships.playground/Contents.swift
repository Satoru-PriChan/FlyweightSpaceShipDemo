import UIKit

let fleetSize = 1000
var ships = [SpaceShip]()
var vertices = [Float].init(repeating: 0, count: fleetSize)// just a dummy array of floats

for _ in 0..<fleetSize {
    //It costs 1000 times much memory than creating just one object of SpaceShip without Flyweight design pattern.
    let ship = SpaceShip(mesh: vertices, imageNamed: "SpaceShip", position: (
            Float.random(in: 1...100),
            Float.random(in: 1...100),
            Float.random(in: 1...100)
            )
        )
    ships.append(ship)
}
