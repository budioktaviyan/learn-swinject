import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Home"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
