import UIKit

class CardViewController: UIViewController {
    
    var xFromCentre: CGFloat = 0

    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var panFromCentre: NSLayoutConstraint!

    @IBAction func swipeImage(sender: UIPanGestureRecognizer) {
        println("gesture is visible")
        
      // Set UIGesture States
        if sender.state == UIGestureRecognizerState.Began {
            print("began")
        }
        else if sender.state == UIGestureRecognizerState.Ended {
            println("ended")
        } else {
            print("stopped panning")
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //override func awakeFromNib() {
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        myImage.layer.cornerRadius = (myImage.bounds.size.width + myImage.bounds.size.height) / 4
//        myImage.clipsToBounds = true
//        var gesture = UIPanGestureRecognizer(target: self, action: Selector ("swipeImage:"))
//        myImage.addGestureRecognizer(gesture)
//        myImage.userInteractionEnabled = true
        
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
