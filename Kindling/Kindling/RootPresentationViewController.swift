import UIKit

class RootPresentationViewController: UIViewController {

    @IBOutlet weak var cardContainerView: UIView!
    
    
    @IBOutlet weak var horizontalCenterConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
      //  var gesture = UIPanGestureRecognizer(target: self, action: Selector ("wasSwipped:"))
    }
    
    @IBAction func didPan(sender: UIPanGestureRecognizer) {
        
        switch sender.state {
            
        case .Began :
            
            println ("pan did begin")
            
        case .Changed :
            var panVector = sender.translationInView(view)
            if abs(panVector.x) < self.view.bounds.width / 2 {

            horizontalCenterConstraint.constant = -panVector.x
            
            println ("pan changed")
            }
            
        case .Ended :
            
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.horizontalCenterConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
            
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
