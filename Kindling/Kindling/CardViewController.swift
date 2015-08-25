import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    

    @IBAction func swipeImage(sender: UIPanGestureRecognizer) {
        println("I poooooped")
    }

 
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//    topLayerView.cornerRadius = 20.0
//    bottomLayerView.cornerRadius = 35.0
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //override func awakeFromNib() {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myImage.layer.cornerRadius = (myImage.bounds.size.width + myImage.bounds.size.height) / 4
        myImage.clipsToBounds = true
        
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
