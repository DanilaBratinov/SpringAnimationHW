import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    private init() {}
}
