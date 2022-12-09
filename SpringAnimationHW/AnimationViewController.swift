import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet var animationLabel: SpringLabel!
    @IBOutlet var animationView: SpringView!
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        animationLabel.text = "Следующая анимация:\n\(randomPreset!.rawValue)"
    }
    
    var randomCurve = AnimationCurve.allCases.shuffled().randomElement()
    var randomPreset = AnimationPreset.allCases.shuffled().randomElement()
    
    private func randomAnimation() {
        animationView.curve = randomCurve!.rawValue
        animationView.animation = randomPreset!.rawValue
        animationView.duration = CGFloat.random(in: 0.5...2)
        animationView.force = CGFloat.random(in: 0.5...2)
        animationView.animate()
        
        textView.text =
"""
Preset: \(randomPreset!)
Curve: \(randomCurve!)
Force: \(String(format: "%.1f", animationView.force))
Duration: \(String(format: "%.1f", animationView.duration))
"""
        
        randomCurve = .allCases.randomElement()!
        randomPreset = .allCases.randomElement()!
        
        animationLabel.text = "Следующая анимация:\n\(randomPreset!.rawValue)"

    }

    @IBAction func nextPressed(_ sender: UIButton) {
        sender.pulsate()
        randomAnimation()
    }
}
