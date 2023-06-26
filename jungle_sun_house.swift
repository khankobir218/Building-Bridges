import UIKit

// First 2000 lines of code for Building Bridges

class Bridge {
    
    var name: String
    var length: Double
    var materials: [String]
    
    init(name: String, length: Double, materials: [String]) {
        self.name = name
        self.length = length
        self.materials = materials
    }
    
    func description() {
        let materialString = materials.joined(separator: " and ")
        print("The \(name) bridge is \(length) meters long and is made of \(materialString).")
    }
}

class ConcreteBridge: Bridge {
    
    var yearBuilt: Int
    
    init(name: String, length: Double, materials: [String], yearBuilt: Int) {
        self.yearBuilt = yearBuilt
        super.init(name: name, length: length, materials: materials)
    }
    
    override func description() {
        print("The \(name) bridge is a concrete bridge that is \(length) meters long. It was built in \(yearBuilt) and its materials are made of \(materials.joined(separator: " and ")).")
    }
}

class SuspensionBridge: Bridge {
    
    var height: Double
    
    init(name: String, length: Double, materials: [String], height: Double) {
        self.height = height
        super.init(name: name, length: length, materials: materials)
    }
    
    override func description() {
        print("The \(name) bridge is a suspension bridge that is \(length) meters long. Its main cables reach \(height) meters above the water level. It is made of \(materials.joined(separator: " and ")).")
    }
}

class SteelBridge: Bridge {
    
    var totalWeight: Double
    
    init(name: String, length: Double, materials: [String], totalWeight: Double) {
        self.totalWeight = totalWeight
        super.init(name: name, length: length, materials: materials)
    }
    
    override func description() {
        print("The \(name) bridge is a steel bridge that is \(length) meters long. Its total weight is \(totalWeight) metric tons. It is made of \(materials.joined(separator: " and ")).")
    }
}

let millauViaduct = Bridge(name: "Millau Viaduct", length: 2460, materials: ["concrete", "steel decking"])
let goldenGateBridge = ConcreteBridge(name: "Golden Gate Bridge", length: 2737, materials: ["steel", "concrete"], yearBuilt: 1937)
let brooklynBridge = SuspensionBridge(name: "Brooklyn Bridge", length: 1825, materials: ["steel"], height: 84)
let tateyamaBayCrossing = SteelBridge(name: "Tateyama Bay Crossing", length: 3911, materials: ["steel"], totalWeight: 12100)

millauViaduct.description()
goldenGateBridge.description()
brooklynBridge.description()
tateyamaBayCrossing.description()