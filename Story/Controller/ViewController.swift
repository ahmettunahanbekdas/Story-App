
import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    
    
    override func viewDidLoad() {
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTittle()
        buttonOne.setTitle(storyBrain.getChoise1(), for: .normal)
        buttonTwo.setTitle(storyBrain.getChoise2(), for: .normal)
    }
    
}

