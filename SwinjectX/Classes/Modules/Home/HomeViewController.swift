import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeCollectionView: UICollectionView!

    fileprivate let cellIdentifier: String = "HomeCollectionViewCell"
    fileprivate let brands: [String] = [
        "Apple",
        "Google",
        "Amazon",
        "Samsung",
        "Motorola",
        "Xiaomi",
        "Lenovo",
        "Asus",
        "Sony",
        "Oppo",
        "Vivo",
        "Nokia",
        "Microsoft",
        "Acer",
        "Dell"
    ].sorted()

    override func viewDidLoad() {
        self.title = "Home"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: nil,
            style: UIBarButtonItemStyle.plain,
            target: nil,
            action: nil
        )

        let homeCollectionViewCell = UINib(nibName: cellIdentifier, bundle: nil)
        self.homeCollectionView.register(homeCollectionViewCell, forCellWithReuseIdentifier: cellIdentifier)
        self.homeCollectionView.delegate = self
        self.homeCollectionView.dataSource = self
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return brands.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! HomeCollectionViewCell
        cell.uiLabel.text = brands[indexPath.row]

        return cell
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let brand = brands[indexPath.row]
        AppRouter.sharedInstance.presentView(viewController: DetailViewController(brand: brand))
    }
}
