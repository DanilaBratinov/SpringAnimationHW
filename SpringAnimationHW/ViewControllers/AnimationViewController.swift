import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    @IBOutlet var buttonOutlet: SpringButton! {
        didSet {
            buttonOutlet.setTitle(animation.name, for: .normal)
        }
    }
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var textView: UITextView! {
        didSet {
            textView.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()

    
    private func randomAnimation() {
        animationView.curve = animation.curve
        animationView.animation = animation.name
        animationView.duration = animation.duration
        animationView.force = animation.force
        animationView.animate()
        
        textView.text = animation.description
    }
    
    @IBAction func nextPressed(_ sender: UIButton) {
        sender.pulsate()
        randomAnimation()
    
        animation = Animation.getRandomAnimation()
        sender.setTitle(animation.name, for: .normal)
    }
}
