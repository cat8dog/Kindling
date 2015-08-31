import UIKit


class RootPresentationViewController: UIViewController {

    @IBOutlet weak var cardContainerView: UIView!
    
    
    @IBOutlet weak var horizontalCenterConstraint: NSLayoutConstraint!
    
    var swipeToChoose:SelectionState = .NoSelection {
        didSet {
            
        }
    }
    
    enum SelectionState {
 
        case NoSelection
        
        case LikeSelection
        
        case DislikeSelection
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        horizontalCenterConstraint.constant = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func didPan(sender: UIPanGestureRecognizer) {
  
        
        switch sender.state {
            
        case .Began :
            
            swipeToChoose = .NoSelection
            println ("pan did begin")
            
            case .Changed :
            var panVector = sender.translationInView(view)
            if abs(panVector.x) < self.view.bounds.width / 2 {

            horizontalCenterConstraint.constant = -panVector.x
            
            println ("pan changed")
    
                
            }
            
            if panVector.x > self.view.bounds.width / 2 {
                
                swipeToChoose = .LikeSelection
                
            } else if panVector.x < -(self.view.bounds.width / 2) {
                
                swipeToChoose = .DislikeSelection
                
            }
        
        
        case .Ended :
            
 
            switch self.swipeToChoose {
                
            case .DislikeSelection:
                
                self.performSegueWithIdentifier("wasNotLiked", sender: self)
                
            case .LikeSelection:
                
                self.performSegueWithIdentifier("wasLiked", sender: self)
                
            default: println("no selection")
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.horizontalCenterConstraint.constant = 0
                self.view.layoutIfNeeded()
                
                }, completion: { (completed) -> Void in
            })
                
                
            }

            
        default:
            println("default selection")
  
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
