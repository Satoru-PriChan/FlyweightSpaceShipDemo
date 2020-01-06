import UIKit

let fleetSize = 1000
var ships = [SpaceShip]()
var vertices = [Float].init(repeating: 0, count: fleetSize)// just a dummy array of floats

//Create SharedSpaceShipData first.
let sharedState = SharedSpaceShipData(mesh: vertices, imageNamed: "SpaceShip")

for _ in 0..<fleetSize {
    //It costs 1000 times much memory than creating just one object of SpaceShip without Flyweight design pattern.
    let ship = SpaceShip(sharedData: sharedState, position: (
            Float.random(in: 1...100),
            Float.random(in: 1...100),
            Float.random(in: 1...100)
            )
        )
    ships.append(ship)
}
