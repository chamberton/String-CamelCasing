// http://www.cse.yorku.ca/~oz/hash.html

extension String {
    var scalars: [UInt32] {
        var scalarArray = [UInt32]()
        for scalar in string.unicodeScalars {
           scalarArray.append(scalar.value)
        }
        return scalarArray
    }
    
    var djb2Hash: Int {
        let scalars = self.scalars
        return scalars.reduce(5381) {
            ($0 << 5) &+ $0 &+ Int($1)
        }
    }
    
    
    var sdbmHash: Int {
        let unicodeScalars = self.unicodeScalars.map { $0.value }
        return unicodeScalars.reduce(0) {
            Int($1) &+ ($0 << 6) &+ ($0 << 16) - $0
        }
    }
}
