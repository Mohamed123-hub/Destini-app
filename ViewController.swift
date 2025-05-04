

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
       
        
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        
        storyBrain.getNextStory(userChoice)
        
            
       
        updateUI()
        
        
        
        
    }
    
    
    
    func updateUI () {
        storyLabel.text = storyBrain.getTheLabel()
        choice1Button.setTitle(storyBrain.getTheChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getTheChoice2(), for: .normal)
        

        
    }
    
    
    
    
    
}

