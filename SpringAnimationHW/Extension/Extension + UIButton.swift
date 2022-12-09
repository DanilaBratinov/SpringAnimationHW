import UIKit

extension UIButton {
    func pulsate() {
        let springAnimtion = CASpringAnimation(keyPath: "transform.scale")
        springAnimtion.fromValue = 0.9
        springAnimtion.toValue = 1
        springAnimtion.duration = 0.5
        
        layer.add(springAnimtion, forKey: nil)
    }
}
