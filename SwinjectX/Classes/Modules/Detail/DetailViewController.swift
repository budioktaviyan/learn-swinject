import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var brandName: UILabel!

    fileprivate var brand: String

    init(brand: String) {
        self.brand = brand
        super.init(nibName: "DetailViewController", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        self.title = "Detail"
        self.brandName.text = brand
    }
}
